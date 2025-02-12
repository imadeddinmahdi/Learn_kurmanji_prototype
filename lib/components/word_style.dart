//here we will have all the styles and widgets for the words and text
//for example, Kurmanji to Sorani words and so on.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const fontStyle = GoogleFonts.notoNaskhArabic;
const textSize = 18.0;
const textColor = Color(0xff393939);
const newWordColor = Colors.black;
const noteBackgroundColor = Color(0xffD4E2FC);
const noteTextColor = Colors.black54;
const newWordFontSize = 18.0;

class NewWord extends StatelessWidget {
  NewWord({Key? key, 
    this.text1,
    this.text2,
  }) : super(key: key);
  String? text1;
  String? text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: RichText(
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        text: TextSpan(
          children: [
            TextSpan(text: text1, style: const TextStyle(color: newWordColor, fontWeight: FontWeight.bold, fontSize: newWordFontSize)),
            const TextSpan(text: '    '),
            TextSpan(text: text2, style: const TextStyle(color: textColor, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

Widget paragraphText(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Text(
      text,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.start,
      textScaleFactor: 1.0,
      style: fontStyle(
        color: textColor,
        fontSize: textSize,
      ),
    ),
  );
}

Widget titleText(String text) {
  return Center(
    child: Container(
      margin: const EdgeInsets.only(top: 10, bottom: 40),
      child: Text(
        text,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: fontStyle(
          color: textColor,
          fontSize: 30,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget topicText(String text) {
  return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffD3D5D9),
        ),
        borderRadius: BorderRadius.circular(20),
        //color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: 10, top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(text,
          textScaleFactor: 1,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
          style: fontStyle(
              fontSize: 16,
              //fontWeight: FontWeight.bold,
              color: Colors.grey.shade700)));
}

Widget noteText(String text) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: noteBackgroundColor),
    margin: const EdgeInsets.only(bottom: 10, top: 20),
    padding: const EdgeInsets.all(10),
    child: Text(
      text,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.right,
      style: fontStyle(
        color: noteTextColor,
        fontSize: textSize,
      ),
      textScaleFactor: 1.0,
    ),
  );
}

// Widget sentenceExample(String text1, String text2, String? text3) {
//   return RichText(
//       text: TextSpan(children: [
//     TextSpan(text: text1),
//     TextSpan(text: text2),
//     TextSpan(text: text3),
//   ]));
// }

class KurmanjiExample extends StatelessWidget {
  KurmanjiExample({Key? key, this.text1, this.text2, this.text3, this.text4, this.text5, this.color1, this.color2, this.color3, this.color4, this.color5, this.fontWeight}) : super(key: key);
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  String? text5;
  Color? color1;
  Color? color2;
  Color? color3;
  Color? color4;
  Color? color5;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: RichText(
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        text: TextSpan(
          style: fontStyle(fontSize: textSize, color: textColor, fontWeight: fontWeight),
          children: [
            TextSpan(text: text1, style: TextStyle(color: color1)),
            TextSpan(text: text2, style: TextStyle(color: color2)),
            TextSpan(text: text3, style: TextStyle(color: color3)),
            TextSpan(text: text4, style: TextStyle(color: color4)),
            TextSpan(text: text5, style: TextStyle(color: color5)),
          ],
        ),
      ),
    );
  }
}

class SoraniExample extends StatelessWidget {
  SoraniExample({Key? key, this.text1, this.text2, this.text3, this.text4, this.text5, this.color1, this.color2, this.color3, this.color4, this.color5}) : super(key: key);
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  String? text5;
  Color? color1;
  Color? color2;
  Color? color3;
  Color? color4;
  Color? color5;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: RichText(
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        text: TextSpan(
          style: const TextStyle(fontSize: textSize, color: textColor),
          children: [
            TextSpan(text: text1, style: TextStyle(color: color1)),
            TextSpan(text: text2, style: TextStyle(color: color2)),
            TextSpan(text: text3, style: TextStyle(color: color3)),
            TextSpan(text: text4, style: TextStyle(color: color4)),
            TextSpan(text: text5, style: TextStyle(color: color5)),
          ],
        ),
      ),
    );
  }
}

//todo: I need to style this table for later

Widget table({required text1, required String text2}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xff60656F),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Table(
      columnWidths: const {
        0: FlexColumnWidth(0.5),
      },
      textDirection: TextDirection.rtl,
      children: [
        TableRow(children: [
          Text(
            text1,
            style: fontStyle(fontSize: textSize, color: const Color(0xffCEFF7E), fontWeight: FontWeight.bold),
            textAlign: TextAlign.end,
            textScaleFactor: 1.0,
          ),
          Text(
            text2,
            style: fontStyle(fontSize: textSize, color: Colors.white),
            textAlign: TextAlign.end,
            textScaleFactor: 1.0,
          ),
        ]),
      ],
    ),
  );
}

//todo: style the vocab, and change the tab color or style to make it easier to read

Widget vocab({required text1, required String text2}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: const Color(0xffc2c2c2)),
      // color: Color(0xffd7d7d7),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    margin: const EdgeInsets.only(top: 30),
    child: Table(
      columnWidths: const {
        0: FlexColumnWidth(0.3),
      },
      textDirection: TextDirection.rtl,
      children: [
        TableRow(children: [
          Text(
            text1,
            style: fontStyle(
                fontSize: 22,
                //color: Color(0xffCEFF7E),
                color: const Color(0xff8800e3),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.end,
            textScaleFactor: 1.0,
          ),
          Text(
            text2,
            style: fontStyle(fontSize: textSize, color: Colors.black),
            textAlign: TextAlign.end,
            textScaleFactor: 1.0,
          ),
        ]),
      ],
    ),
  );
}

//todo: hint below lyric text (package)

class VocabCard extends StatelessWidget {
  final String kurmanji;
  final String kurdish;
  final String english;

  const VocabCard({Key? key, 
    required this.kurmanji,
    required this.kurdish,
    required this.english,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            kurmanji,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            kurdish,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            english,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
