import 'package:flutter/material.dart';
import 'package:learn_kurmanji_2022/components/rounded_button_tile.dart';
import 'package:learn_kurmanji_2022/screens/grammar.dart';

import '../others/utils.dart';

const roundedButtonHeight = 85.0;

class LessonsList extends StatefulWidget {
  static const String id = 'lessons_list';

  @override
  State<LessonsList> createState() => _FirstPageState();
}

class _FirstPageState extends State<LessonsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2F31),
      //backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: roundedButtonHeight,
                ),
                RoundedButtonTile(
                  height: roundedButtonHeight,
                  onTap: () async {
                    print('lessons pressed');
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Grammar(
                                  lessonNumber: 0,
                                )));
                    setState(() {});
                  },
                  text: 'سەرەتا',
                ),
                RoundedButtonTile(
                  height: roundedButtonHeight,
                  isLocked: !isLessonCompleted(0),
                  text: 'جێناو',
                  onTap: () async {
                    print('vocab pressed');
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Grammar(
                                  lessonNumber: 1,
                                )));
                    setState(() {});
                  },
                ),
                RoundedButtonTile(
                  height: roundedButtonHeight,
                  isLocked: !isLessonCompleted(1),
                  text: 'کردار',
                  onTap: () async {
                    print('vocab pressed');
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Grammar(
                                  lessonNumber: 2,
                                )));
                    setState(() {});
                  },
                ),
                RoundedButtonTile(
                  height: roundedButtonHeight,
                  isLocked: !isLessonCompleted(2),
                  text: 'ئیزافە',
                  onTap: () async {
                    print('vocab pressed');
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Grammar(
                                  lessonNumber: 3,
                                )));
                    setState(() {});
                  },
                ),
                RoundedButtonTile(
                  height: roundedButtonHeight,
                  isLocked: !isLessonCompleted(3),
                  text: 'داهاتوو',
                  onTap: () async {
                    print('vocab pressed');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Grammar(
                                  lessonNumber: 4,
                                )));
                  },
                ),
                RoundedButtonTile(
                  height: roundedButtonHeight,
                  isLocked: !isLessonCompleted(4),
                  text: 'کۆتا وانە',
                  onTap: () async {
                    print('vocab pressed');
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Grammar(
                                  lessonNumber: 5,
                                )));
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
