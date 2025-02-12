import 'package:flutter/material.dart';
import 'package:learn_kurmanji_2022/others/utils.dart';

class KurmanjiLyricText extends StatelessWidget {
  KurmanjiLyricText({Key? key, this.text1, this.text2, this.text3, this.text4, this.color1, this.color2, this.color3, this.color4}) : super(key: key);
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  Color? color1;
  Color? color2;
  Color? color3;
  Color? color4;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: lyricsFontSize, fontWeight: FontWeight.bold),
        children: [
          TextSpan(text: text1, style: TextStyle(color: color1)),
          TextSpan(text: text2, style: TextStyle(color: color2)),
          TextSpan(text: text3, style: TextStyle(color: color3)),
          TextSpan(text: text4, style: TextStyle(color: color4)),
        ],
      ),
    );
  }
}

class SoraniLyricText extends StatelessWidget {
  SoraniLyricText({Key? key, this.text1, this.text2, this.text3, this.text4, this.color1, this.color2, this.color3, this.color4}) : super(key: key);
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  Color? color1;
  Color? color2;
  Color? color3;
  Color? color4;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: lyricsFontSize, color: Colors.grey.shade300),
        children: [
          TextSpan(text: text1, style: TextStyle(color: color1)),
          TextSpan(text: text2, style: TextStyle(color: color2)),
          TextSpan(text: text3, style: TextStyle(color: color3)),
          TextSpan(text: text4, style: TextStyle(color: color4)),
        ],
      ),
    );
  }
}

Widget lyricSmallText({
  required String text,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Text(
      text,
      style: TextStyle(fontSize: lyricsFontSize - 4, color: Colors.grey.shade500),
    ),
  );
}

Widget lyricBigText({
  required String text,
}) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 30,
      color: Colors.white,
    ),
  );
}

Widget singerName(String text) {
  return Container(
    color: Colors.white,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey[800],
        ),
      ),
    ),
  );
}

Widget oneLine() {
  return Container(
    margin: const EdgeInsets.only(top: 30, bottom: 10),
    child: Divider(
      color: Colors.grey.shade600,
      height: 3,
      endIndent: 150,
      indent: 150,
      thickness: 1,
    ),
  );
}
