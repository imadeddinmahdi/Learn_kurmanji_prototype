import 'package:flutter/material.dart';
import 'package:learn_kurmanji_2022/components/lessons_content.dart';
import 'package:learn_kurmanji_2022/components/vocab_content.dart';
import 'package:learn_kurmanji_2022/main.dart';

class Grammar extends StatefulWidget {
  static const String id = 'grammar';

  final int lessonNumber;
  Grammar({required this.lessonNumber});

  @override
  State<Grammar> createState() => _GrammarState();
}

class _GrammarState extends State<Grammar> {
  //scroll controller:
  final ScrollController vocabScrollController = ScrollController();
  final ScrollController lessonScrollController = ScrollController();

  bool isLessonCompleted = false;
  bool isVocabCompleted = false;

  @override
  void initState() {
    isLessonCompleted = stoage.read('grammar_${widget.lessonNumber}_lesson') ?? false;
    isVocabCompleted = stoage.read('grammar_${widget.lessonNumber}_vocab') ?? false;

    vocabScrollController.addListener(() {
      if (vocabScrollController.position.maxScrollExtent == vocabScrollController.offset) {
        setState(() {
          isVocabCompleted = true;
        });
        completeLesson();
        String keyName = 'grammar_${widget.lessonNumber}_vocab';
        stoage.write(keyName, true);
      }
    });

    lessonScrollController.addListener(() {
      if (lessonScrollController.position.maxScrollExtent == lessonScrollController.offset) {
        setState(() {
          isLessonCompleted = true;
        });
        completeLesson();
        String keyName = 'grammar_${widget.lessonNumber}_lesson';
        stoage.write(keyName, true);
      }
    });

    super.initState();
  }

  completeLesson() {
    // if (isLessonCompleted && isVocabCompleted) {
    //   Navigator.pop(context);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        //grey color grey.shade800
        child: Scaffold(
          backgroundColor: const Color(0xffF7F7FF),
          appBar: AppBar(
            backgroundColor: const Color(0xffF7F7FF),
            bottom: TabBar(
              labelStyle: const TextStyle(fontSize: 16),
              indicatorColor: Colors.black,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey.shade500,
              indicator: const UnderlineTabIndicator(borderSide: BorderSide(color: Colors.grey, style: BorderStyle.none)),
              tabs: [
                //the tick icon should be on the right side of the text instead of the top:
                Tab(
                  text: 'وانە',
                  icon: isLessonCompleted ? const Icon(Icons.check) : null,
                ),
                Tab(
                  text: 'وشەکان',
                  icon: isVocabCompleted ? const Icon(Icons.check) : null,
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: lessonNo[widget.lessonNumber],
                  controller: lessonScrollController,
                ),
                SingleChildScrollView(
                  child: vocabNo[widget.lessonNumber],
                  controller: vocabScrollController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
