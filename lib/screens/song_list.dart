import 'package:flutter/material.dart';
import 'package:learn_kurmanji_2022/components/card.dart';
import 'package:learn_kurmanji_2022/components/player_ui.dart';
import 'package:get_storage/get_storage.dart';

class SongStateManager {
  static final SongStateManager _instance = SongStateManager._internal();
  factory SongStateManager() => _instance;
  SongStateManager._internal();

  List<Map<String, dynamic>>? songs;
  final _storage = GetStorage();
  static const String _storageKey = 'song_order';

  static final List<String> songTitle = ['Wlate me Kurdistane', 'Peshmerga bim', 'Felek', 'Nasrin', 'Agir ketiye', 'Hizir nekey', 'Cane', 'Çavreşamın'];

  static final List<String> singerName = [
    'Shehribana Kurdi',
    'Blind Ibrahim',
    'Ciwan Haco',
    'Diljen Roni',
    'Zakaria Abdullah',
    'Zakaria Abdullah',
    'Koma se bira',
    'Sahe Bedo',
  ];

  static final List<String> imageList = ['assets/images/shehriban.jpg', 'assets/images/blind.jpg', 'assets/images/ciwan.jpg', 'assets/images/diljen.jpg', 'assets/images/zakaria.jpg', 'assets/images/zakaria.jpg', 'assets/images/sebra.jpg', 'assets/images/sahe.jpg'];

  static final List<String> songFiles = [
    'sehirban.mp3',
    'blind.mp3',
    'ciwan.mp3',
    'diljen.mp3',
    'zakaria.mp3',
    'shivanaGare.mp3',
    'SeBraCane.mp3',
    'sahe.mp3',
  ];

  List<Map<String, dynamic>> getBaseSongs() {
    return List.generate(
      songTitle.length,
      (index) => {
        'image': imageList[index],
        'title': songTitle[index],
        'singer': singerName[index],
        'songPath': 'songs/${songFiles[index]}',
        'index': index,
      },
    );
  }

  Future<void> saveSongOrder() async {
    if (songs == null) return;
    try {
      List<String> orderByTitle = songs!.map((song) => song['title'] as String).toList();
      await _storage.write(_storageKey, orderByTitle);
      print('Saved order: $orderByTitle');
    } catch (e) {
      print('Error saving song order: $e');
    }
  }

  Future<List<Map<String, dynamic>>> getInitialSongs() async {
    try {
      // If we already have songs in memory, return them
      if (songs != null) return songs!;

      // Get the base song list
      final baseSongs = getBaseSongs();

      // Try to load saved order
      final List<dynamic>? savedOrder = _storage.read(_storageKey);
      if (savedOrder != null && savedOrder.isNotEmpty) {
        try {
          final List<String> savedTitles = savedOrder.cast<String>();
          if (savedTitles.length == baseSongs.length) {
            final reorderedSongs = savedTitles
                .map((title) => baseSongs.firstWhere(
                      (song) => song['title'] == title,
                      orElse: () => baseSongs[0],
                    ))
                .toList();
            songs = reorderedSongs;
            return reorderedSongs;
          }
        } catch (e) {
          print('Error loading saved order: $e');
          await _storage.remove(_storageKey);
        }
      }

      // If no valid saved order, use base order
      songs = baseSongs;
      return baseSongs;
    } catch (e) {
      print('Error in getInitialSongs: $e');
      // Return base songs as fallback
      final baseSongs = getBaseSongs();
      songs = baseSongs;
      return baseSongs;
    }
  }
}

class SongList extends StatefulWidget {
  static const String id = 'song_list';

  @override
  State<SongList> createState() => _SongListState();
}

class _SongListState extends State<SongList> {
  final SongStateManager _songManager = SongStateManager();
  List<Map<String, dynamic>>? songs;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadSongs();
  }

  Future<void> _loadSongs() async {
    try {
      final loadedSongs = await _songManager.getInitialSongs();
      if (mounted) {
        setState(() {
          songs = loadedSongs;
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Error loading songs: $e');
      if (mounted) {
        // Use base songs as fallback
        setState(() {
          songs = _songManager.getBaseSongs();
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2F31),
      appBar: AppBar(
        title: const Text('Songs'),
        backgroundColor: Colors.grey[900],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : songs == null || songs!.isEmpty
              ? const Center(child: Text('No songs available'))
              : ReorderableListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: songs!.length,
                  onReorder: (oldIndex, newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final item = songs!.removeAt(oldIndex);
                      songs!.insert(newIndex, item);

                      // Update indices and manager's songs list
                      for (int i = 0; i < songs!.length; i++) {
                        songs![i]['index'] = i;
                      }
                      _songManager.songs = songs;
                      _songManager.saveSongOrder();
                    });
                  },
                  itemBuilder: (context, index) {
                    final song = songs![index];
                    return SongCard(
                      key: ValueKey(song['title']),
                      image: song['image'],
                      title: song['title'],
                      subtitle: song['singer'],
                      isDragging: false,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlayerUI(
                              singer: song['singer'],
                              songName: song['title'],
                              selectedCard: song['index'],
                              song: song['songPath'],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  proxyDecorator: (child, index, animation) {
                    return AnimatedBuilder(
                      animation: animation,
                      builder: (BuildContext context, Widget? child) {
                        return Material(
                          color: Colors.transparent,
                          child: SongCard(
                            key: ValueKey(songs![index]['title']),
                            image: songs![index]['image'],
                            title: songs![index]['title'],
                            subtitle: songs![index]['singer'],
                            isDragging: true,
                            onTap: () {},
                          ),
                        );
                      },
                      child: child,
                    );
                  },
                ),
    );
  }
}
