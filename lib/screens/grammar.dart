import 'package:flutter/material.dart';
import 'package:learn_kurmanji_2022/components/lessons_content.dart';
import 'package:learn_kurmanji_2022/main.dart';

class Grammar extends StatefulWidget {
  static const String id = 'grammar';

  final int lessonNumber;
  const Grammar({Key? key, required this.lessonNumber}) : super(key: key);

  @override
  State<Grammar> createState() => _GrammarState();
}

class _GrammarState extends State<Grammar> {
  final ScrollController lessonScrollController = ScrollController();
  bool isLessonCompleted = false;
  double _scrollProgress = 0.0;

  @override
  void initState() {
    super.initState();
    isLessonCompleted = stoage.read('grammar_${widget.lessonNumber}_lesson') ?? false;
    // Initialize scroll progress to 1.0 if lesson is already completed
    _scrollProgress = isLessonCompleted ? 1.0 : 0.0;

    lessonScrollController.addListener(() {
      if (lessonScrollController.position.maxScrollExtent > 0) {
        setState(() {
          // Only update progress if lesson isn't already completed
          if (!isLessonCompleted) {
            _scrollProgress = lessonScrollController.offset / lessonScrollController.position.maxScrollExtent;
          }
        });

        if (_scrollProgress >= 1.0 && !isLessonCompleted) {
          setState(() {
            isLessonCompleted = true;
            _scrollProgress = 1.0; // Ensure it's exactly 1.0
          });
          // Mark both lesson and vocab as completed
          stoage.write('grammar_${widget.lessonNumber}_lesson', true);
          stoage.write('grammar_${widget.lessonNumber}_vocab', true);
          String keyName = 'lesson_${widget.lessonNumber}_completed';
          stoage.write(keyName, true);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7FF),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7FF),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'گەڕانەوە',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2.0),
          child: LinearProgressIndicator(
            value: _scrollProgress,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(
              isLessonCompleted ? Colors.green : Colors.blue,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: lessonNo[widget.lessonNumber],
          controller: lessonScrollController,
        ),
      ),
    );
  }
}
