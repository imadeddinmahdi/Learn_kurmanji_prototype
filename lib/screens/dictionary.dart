import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:learn_kurmanji_2022/styles/dictionary_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:pedantic/pedantic.dart';

class Dictionary extends StatefulWidget {
  static const String id = 'dictionary';

  @override
  State<Dictionary> createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  List<DictionaryWord> words = [];
  Set<String> deletedWords = {};
  bool isLoading = true;
  Set<String> revealedWords = {};
  int _selectedTabIndex = 0;
  Set<String> favoriteWords = {};
  List<DictionaryWord> allWords = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadDeletedWords().then((_) {
        loadFavorites().then((_) {
          loadWords();
        });
      });
    });
  }

  Future<void> loadDeletedWords() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      deletedWords = Set<String>.from(prefs.getStringList('deletedWords') ?? []);
    });
  }

  Future<void> saveDeletedWords() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('deletedWords', deletedWords.toList());
  }

  Future<void> saveWordOrder() async {
    final prefs = await SharedPreferences.getInstance();
    final wordOrder = words.map((word) => word.kurmanji).toList();
    await prefs.setStringList('wordOrder', wordOrder);
  }

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      favoriteWords = Set<String>.from(prefs.getStringList('favoriteWords') ?? []);
    });
  }

  Future<void> saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('favoriteWords', favoriteWords.toList());
  }

  Future<void> loadWords() async {
    try {
      final String response = await rootBundle.loadString('assets/data/dictionary_words.json');
      final data = await compute(jsonDecode, response);

      if (!mounted) return;

      setState(() {
        allWords = (data['words'] as List).map((json) => DictionaryWord.fromJson(json)).toList();

        words = allWords.where((word) => !deletedWords.contains(word.kurmanji)).toList();
        isLoading = false;

        _loadWordOrder();
      });
    } catch (e) {
      print('Error loading words: $e');
      if (!mounted) return;
      setState(() {
        words = [];
        allWords = [];
        isLoading = false;
      });
    }
  }

  Future<void> restoreDefaults() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('پاککردنەوەی وشەکان'),
          content: const Text('هەموو وشەکان وەک سەرەتای لێدێتەوە، دڵنیایت؟'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('نەخێر'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('بەڵێ'),
            ),
          ],
        );
      },
    );

    if (confirmed == true) {
      setState(() {
        deletedWords.clear();
        favoriteWords.clear();
      });
      await saveDeletedWords();
      await saveFavorites();
      await loadWords();
    }
  }

  Future<void> _loadWordOrder() async {
    final prefs = await SharedPreferences.getInstance();
    final savedOrder = prefs.getStringList('wordOrder') ?? [];
    final orderMap = {for (var i = 0; i < savedOrder.length; i++) savedOrder[i]: i};

    if (words.isNotEmpty) {
      setState(() {
        words.sort((a, b) {
          final indexA = orderMap[a.kurmanji] ?? words.length;
          final indexB = orderMap[b.kurmanji] ?? words.length;
          return indexA.compareTo(indexB);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFECEAF4),
        appBar: AppBar(
          backgroundColor: const Color(0xFFECEAF4),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black54),
            onPressed: () => Navigator.pop(context),
          ),
          // title: const Text(
          //   'هەموو وشەکان',
          //   style: TextStyle(
          //     fontSize: 16,
          //     color: Colors.black54,
          //   ),
          // ),
          actions: [
            IconButton(
              icon: const Icon(Icons.restore, color: Colors.black54),
              onPressed: restoreDefaults,
            ),
          ],
          bottom: TabBar(
            tabs: [
              const Tab(text: 'هەموو'),
              Tab(
                child: const Icon(
                  Icons.favorite,
                  size: 20,
                ),
                height: 50,
              ),
              Tab(
                child: const Icon(
                  Icons.delete,
                  size: 20,
                ),
                height: 50,
              ),
            ],
            indicatorColor: Color(0xFF6B47B8),
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.black54,
          ),
        ),
        body: TabBarView(
          children: [
            _buildMainList(),
            _buildFavoriteList(),
            _buildDeletedList(),
          ],
        ),
      ),
    );
  }

  Widget _buildMainList() {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : ReorderableListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            itemCount: words.length,
            onReorder: (oldIndex, newIndex) {
              setState(() {
                if (oldIndex < newIndex) newIndex--;
                final word = words[oldIndex];
                words.removeAt(oldIndex);
                words.insert(newIndex, word);
              });
              unawaited(saveWordOrder());
            },
            buildDefaultDragHandles: false,
            proxyDecorator: (child, index, animation) {
              return AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  return Material(
                    elevation: Tween<double>(begin: 2, end: 8)
                        .animate(CurvedAnimation(
                          parent: animation,
                          curve: Curves.easeInOutCubic,
                        ))
                        .value,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.purpleAccent.withOpacity(animation.value * 0.8),
                          width: 2,
                        ),
                      ),
                      child: child,
                    ),
                  );
                },
                child: child,
              );
            },
            itemBuilder: (context, index) {
              final word = words[index];
              final isRevealed = revealedWords.contains('${word.kurmanji}_${word.kurdish}');
              bool _isHolding = false;
              int _index = 0;

              return Container(
                  key: Key('${word.kurmanji}_${word.kurdish}'),
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(12),
                      child: Stack(children: [
                        Dismissible(
                          key: Key('${word.kurmanji}_${word.kurdish}'),
                          direction: DismissDirection.endToStart,
                          background: Container(
                            decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.delete,
                              color: Colors.red.shade300,
                            ),
                          ),
                          confirmDismiss: (direction) async {
                            return await showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Delete Word'),
                                  content: const Text('Are you sure you want to delete this word?'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.of(context).pop(false),
                                      child: const Text('CANCEL'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.of(context).pop(true),
                                      child: const Text(
                                        'DELETE',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          onDismissed: (direction) async {
                            final uniqueKey = '${word.kurmanji}_${word.kurdish}';

                            // Find all indices that match the kurmanji text
                            final indices = words.asMap().entries.where((entry) => entry.value.kurmanji == word.kurmanji).map((entry) => entry.key).toList();

                            // Remove from local list
                            setState(() {
                              words.removeWhere((w) => '${w.kurmanji}_${w.kurdish}' == uniqueKey);
                              revealedWords.remove(uniqueKey);
                            });

                            // Save changes
                            try {
                              // Only add to deleted if all instances should be removed
                              if (indices.length == 1) {
                                // If only one instance exists
                                deletedWords.add(word.kurmanji);
                              }
                              await saveDeletedWords();
                            } catch (e) {
                              if (mounted) {
                                // Re-add the word at correct position
                                final originalIndex = indices.isNotEmpty ? indices.first : words.length;
                                setState(() {
                                  words.insert(originalIndex, word);
                                  if (indices.length > 1) {
                                    deletedWords.remove(word.kurmanji);
                                  }
                                });
                              }
                            }
                          },
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              if (isRevealed) {
                                final wordKey = '${word.kurmanji}_${word.kurdish}';
                                setState(() {
                                  if (revealedWords.contains(wordKey)) {
                                    revealedWords.remove(wordKey);
                                    print('Word hidden: $wordKey');
                                  } else {
                                    revealedWords.add(wordKey);
                                    print('Word revealed: $wordKey');
                                  }
                                });
                              }
                            },
                            onDoubleTap: () {
                              final wordKey = '${word.kurmanji}_${word.kurdish}';
                              setState(() {
                                if (favoriteWords.contains(wordKey)) {
                                  favoriteWords.remove(wordKey);
                                } else {
                                  favoriteWords.add(wordKey);
                                }
                              });
                              unawaited(saveFavorites());
                              print('Double-tap detected on: $wordKey');
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 20,
                              ),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.white,
                                    Color(0xFFF3F0FF),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.purple.withOpacity(0.06),
                                    spreadRadius: 0,
                                    blurRadius: 6,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: 44,
                                          child: AnimatedSwitcher(
                                            duration: const Duration(milliseconds: 75),
                                            child: isRevealed
                                                ? Text(
                                                    word.kurdish,
                                                    key: ValueKey<String>('${word.kurdish}_shown'),
                                                    style: DictionaryStyles.kurdishStyle,
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  )
                                                : GestureDetector(
                                                    onTapDown: (_) {
                                                      setState(() {
                                                        revealedWords.add('${word.kurmanji.trim()}_${word.kurdish.trim()}');
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                                      child: Icon(
                                                        Icons.visibility_off,
                                                        color: Color.fromARGB(255, 153, 145, 165),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          word.kurmanji,
                                          style: DictionaryStyles.kurmanjiStyle,
                                          textAlign: TextAlign.right,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      ReorderableDragStartListener(
                                        index: index,
                                        child: GestureDetector(
                                          onTapDown: (_) {
                                            setState(() {
                                              _isHolding = true;
                                              _index = index;
                                            });
                                          },
                                          onLongPressStart: (_) {
                                            setState(() {
                                              _isHolding = true;
                                              _index = index;
                                            });
                                          },
                                          onTapUp: (_) {
                                            setState(() {
                                              _isHolding = false;
                                            });
                                          },
                                          onLongPressEnd: (_) {
                                            setState(() {
                                              _isHolding = false;
                                            });
                                          },
                                          child: Container(
                                            width: 40,
                                            height: 70,
                                            decoration: const BoxDecoration(
                                              // color: Color(0xff595959),
                                              borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.drag_handle,
                                                  color: Colors.grey.shade400,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Positioned(
                                  //   left: 8,
                                  //   top: 8,
                                  //   child: AnimatedOpacity(
                                  //     opacity: favoriteWords.contains('${word.kurmanji.trim()}_${word.kurdish.trim()}') ? 1 : 0,
                                  //     duration: const Duration(milliseconds: 200),
                                  //     child: Icon(
                                  //       Icons.favorite,
                                  //       color: Colors.red[400],
                                  //       size: 28,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        if (favoriteWords.contains('${word.kurmanji.trim()}_${word.kurdish.trim()}'))
                          Positioned(
                            left: 4,
                            top: 75,
                            child: Container(
                              // opacity: favoriteWords.contains('${word.kurmanji.trim()}_${word.kurdish.trim()}') ? 1 : 0,
                              // duration: const Duration(milliseconds: 200),
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 0,
                                    blurRadius: 6,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red[500],
                                size: 22,
                              ),
                            ),
                          ),
                      ])));
            },
          );
  }

  Widget _buildFavoriteList() {
    final favoriteList = allWords.where((word) => favoriteWords.contains('${word.kurmanji.trim()}_${word.kurdish.trim()}') && !deletedWords.contains(word.kurmanji)).toList();

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      itemCount: favoriteList.length,
      itemBuilder: (context, listIndex) {
        final word = favoriteList[listIndex];
        return _buildWordCard(word, false);
        // return SizedBox(
        //   width: 10,
        // );
      },
    );
  }

  Widget _buildDeletedList() {
    final deletedList = allWords.where((word) => deletedWords.contains(word.kurmanji)).toList();

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      itemCount: deletedList.length,
      itemBuilder: (context, listIndex) {
        final word = deletedList[listIndex];
        return Dismissible(
          key: Key('restore_${word.kurmanji}_${word.kurdish}'),
          direction: DismissDirection.startToEnd,
          background: Container(
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20),
            child: Icon(
              Icons.undo,
              color: Colors.green.shade300,
            ),
          ),
          confirmDismiss: (direction) async {
            return await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Restore Word'),
                  content: const Text('Are you sure you want to restore this word?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: const Text('CANCEL'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('RESTORE'),
                    ),
                  ],
                );
              },
            );
          },
          onDismissed: (direction) async {
            setState(() {
              deletedWords.remove(word.kurmanji);
              words = allWords.where((w) => !deletedWords.contains(w.kurmanji)).toList();
            });
            await saveDeletedWords();
            await saveWordOrder();
            if (mounted) {
              setState(() {
                favoriteWords.remove('${word.kurmanji}_${word.kurdish}');
              });
              unawaited(saveFavorites());
            }
          },
          child: _buildCardContent(word, isEnabled: false),
        );
      },
    );
  }

  Widget _buildWordCard(DictionaryWord word, bool isEnabled) {
    return Container(
      // opacity: isEnabled ? 1.0 : 0.6,
      child: Container(
        key: Key('${word.kurmanji}_${word.kurdish}'),
        margin: const EdgeInsets.only(bottom: 8),
        child: _selectedTabIndex == 1
            ? Container(
                decoration: DictionaryStyles.cardDecoration,
                child: _buildCardContent(word, isEnabled: false),
              )
            : Dismissible(
                key: Key('${word.kurmanji}_${word.kurdish}'),
                direction: DismissDirection.endToStart,
                background: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.delete,
                    color: Colors.red.shade300,
                  ),
                ),
                confirmDismiss: (direction) async {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Delete Word'),
                        content: const Text('Are you sure you want to delete this word?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text('CANCEL'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text('DELETE'),
                          ),
                        ],
                      );
                    },
                  );
                },
                onDismissed: (direction) async {
                  setState(() {
                    deletedWords.add(word.kurmanji);
                    words.removeWhere((w) => w.kurmanji == word.kurmanji);
                  });
                  await saveDeletedWords();
                  await saveWordOrder();
                },
                child: _buildCardContent(word, isEnabled: _selectedTabIndex == 0),
              ),
      ),
    );
  }

  Widget _buildCardContent(DictionaryWord word, {required bool isEnabled}) {
    final wordKey = '${word.kurmanji.trim()}_${word.kurdish.trim()}';
    final isRevealed = revealedWords.contains(wordKey);

    bool _isHolding = false;
    int _index = 0;

    return Stack(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if (isEnabled) {
              setState(() {
                revealedWords.add(wordKey);
              });
            }
          },
          onDoubleTap: isEnabled
              ? () {
                  final wordKey = '${word.kurmanji.trim()}_${word.kurdish.trim()}';
                  setState(() {
                    if (favoriteWords.contains(wordKey)) {
                      favoriteWords.remove(wordKey);
                    } else {
                      favoriteWords.add(wordKey);
                    }
                  });
                  unawaited(saveFavorites());
                  print('Favorited: $wordKey');
                }
              : null,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                  Color(0xFFF3F0FF),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.06),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    // ReorderableDragStartListener(
                    //   index: _index,
                    //   child: GestureDetector(
                    //     onTapDown: (_) {
                    //       setState(() {
                    //         _isHolding = true;
                    //         _index = index;
                    //       });
                    //     },
                    //     onLongPressStart: (_) {
                    //       setState(() {
                    //         _isHolding = true;
                    //         _index = index;
                    //       });
                    //     },
                    //     onTapUp: (_) {
                    //       setState(() {
                    //         _isHolding = false;
                    //       });
                    //     },
                    //     onLongPressEnd: (_) {
                    //       setState(() {
                    //         _isHolding = false;
                    //       });
                    //     },
                    //     child: Container(
                    //       width: 40,
                    //       height: 70,
                    //       decoration: const BoxDecoration(
                    //         // color: Color(0xff595959),
                    //         borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
                    //       ),
                    //       child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Icon(
                    //             Icons.drag_handle,
                    //             color: Colors.grey.shade400,
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 44,
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 75),
                          child: isRevealed
                              ? Text(
                                  word.kurdish.trim(),
                                  key: ValueKey('shown_$wordKey'),
                                  style: DictionaryStyles.kurdishStyle,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                )
                              : GestureDetector(
                                  onTap: () {
                                    if (isEnabled) {
                                      setState(() {
                                        revealedWords.add(wordKey);
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Icon(
                                      Icons.visibility_off,
                                      color: const Color(0xFF7E6B9B),
                                      size: 20,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        word.kurmanji,
                        style: DictionaryStyles.kurmanjiStyle,
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Positioned(
        //   left: 4,
        //   top: 60,
        //   child: Container(
        //     // opacity: favoriteWords.contains('${word.kurmanji.trim()}_${word.kurdish.trim()}') ? 1 : 0,
        //     // duration: const Duration(milliseconds: 200),
        //     padding: const EdgeInsets.all(2),
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(25),
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.black.withOpacity(0.2),
        //           spreadRadius: 0,
        //           blurRadius: 6,
        //           offset: const Offset(0, 2),
        //         ),
        //       ],
        //     ),
        //     child: Icon(
        //       Icons.favorite,
        //       color: Colors.red[500],
        //       size: 22,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

class DictionaryWord {
  final String kurmanji;
  final String kurdish;

  DictionaryWord({
    required this.kurmanji,
    required this.kurdish,
  });

  factory DictionaryWord.fromJson(Map<String, dynamic> json) {
    return DictionaryWord(
      kurmanji: json['kurmanji'],
      kurdish: json['kurdish'],
    );
  }
}
