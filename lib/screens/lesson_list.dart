import 'package:flutter/material.dart';
import 'package:learn_kurmanji_2022/components/rounded_button_tile.dart';
import 'package:learn_kurmanji_2022/screens/grammar.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';

import '../others/utils.dart';

const roundedButtonHeight = 85.0;

class LessonsList extends StatefulWidget {
  static const String id = 'lessons_list';

  @override
  State<LessonsList> createState() => _FirstPageState();
}

class _FirstPageState extends State<LessonsList> {
  final _storage = GetStorage();
  final Map<int, bool> _newlyUnlockedLessons = {};

  @override
  void initState() {
    super.initState();
    // Check for newly unlocked lessons
    for (int i = 1; i < 6; i++) {
      bool previousLessonCompleted = isLessonCompleted(i - 1);
      bool currentLessonLocked = !isLessonCompleted(i);
      bool animationNotShownYet = !(_storage.read('shown_unlock_animation_$i') ?? false);

      if (previousLessonCompleted && currentLessonLocked && animationNotShownYet) {
        setState(() {
          _newlyUnlockedLessons[i] = true;
        });
        _storage.write('shown_unlock_animation_$i', true);
      }
    }
  }

  void _resetProgress() {
    _storage.erase();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2F31),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Reset Progress'),
                    content: const Text('Are you sure you want to reset all lesson progress?'),
                    actions: [
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Reset'),
                        onPressed: () {
                          _resetProgress();
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey[900]!,
              const Color(0xff2C2F31),
              Colors.grey[850]!,
            ],
          ),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: roundedButtonHeight),
                  _buildLessonCard(
                    title: 'سەرەتا',
                    subtitle: 'دەست پێ بکە لێرەوە',
                    icon: Icons.start_outlined,
                    lessonNumber: 0,
                    isLocked: false,
                  ),
                  _buildLessonCard(
                    title: 'جێناو',
                    subtitle: 'جێناوەکان و بەکارهێنانیان',
                    icon: Icons.person_outline,
                    lessonNumber: 1,
                    isLocked: !isLessonCompleted(0),
                  ),
                  _buildLessonCard(
                    title: 'کردار',
                    subtitle: 'کردارە سەرەکییەکان',
                    icon: Icons.run_circle_outlined,
                    lessonNumber: 2,
                    isLocked: !isLessonCompleted(1),
                  ),
                  _buildLessonCard(
                    title: 'ئیزافە',
                    subtitle: 'پەیوەندی نێوان وشەکان',
                    icon: Icons.link,
                    lessonNumber: 3,
                    isLocked: !isLessonCompleted(2),
                  ),
                  _buildLessonCard(
                    title: 'داهاتوو',
                    subtitle: 'کاتی داهاتوو',
                    icon: Icons.update,
                    lessonNumber: 4,
                    isLocked: !isLessonCompleted(3),
                  ),
                  _buildLessonCard(
                    title: 'کۆتا وانە',
                    subtitle: 'پێداچوونەوەی گشتی',
                    icon: Icons.school,
                    lessonNumber: 5,
                    isLocked: !isLessonCompleted(4),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLessonCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required int lessonNumber,
    required bool isLocked,
  }) {
    final List<List<Color>> cardColors = [
      [Colors.purple[900]!, Colors.purple[700]!],
      [Colors.indigo[900]!, Colors.indigo[700]!],
      [Colors.blue[900]!, Colors.blue[700]!],
      [Colors.teal[900]!, Colors.teal[700]!],
      [Colors.deepPurple[900]!, Colors.deepPurple[700]!],
      [Colors.pink[900]!, Colors.pink[700]!],
    ];

    Widget cardContent = Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isLocked ? [Colors.grey[800]!, Colors.grey[700]!] : cardColors[lessonNumber],
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              size: 30,
              color: isLocked ? Colors.grey[400] : Colors.white,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: isLocked ? Colors.grey[400] : Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: isLocked ? Colors.grey[500] : Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            isLocked ? Icons.lock : Icons.arrow_forward_ios,
            color: isLocked ? Colors.grey[600] : Colors.white70,
          ),
        ],
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isLocked
              ? null
              : () async {
                  HapticFeedback.mediumImpact();
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Grammar(lessonNumber: lessonNumber),
                    ),
                  );
                  setState(() {});
                },
          borderRadius: BorderRadius.circular(15),
          child: _newlyUnlockedLessons[lessonNumber] == true
              ? TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeInOut,
                  builder: (context, value, child) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5 * (1 - value)),
                            spreadRadius: 12 * (1 - value),
                            blurRadius: 16,
                          ),
                        ],
                      ),
                      child: child,
                    );
                  },
                  onEnd: () {
                    setState(() {
                      _newlyUnlockedLessons[lessonNumber] = false;
                    });
                  },
                  child: cardContent,
                )
              : cardContent,
        ),
      ),
    );
  }
}
