import 'package:flutter/material.dart';

class DictionaryStyles {
  static const TextStyle kurmanjiStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color(0xFF6B47B8),
  );

  static const TextStyle kurdishStyle = TextStyle(
    fontSize: 18,
    color: Color(0xFF7E6B9B),
  );

  static TextStyle englishStyle = TextStyle(
    fontSize: 16,
    color: Colors.white60,
    fontStyle: FontStyle.italic,
  );

  static List<Color> cardGradient = [
    Colors.purple[900]!,
    Colors.purple[700]!,
  ];

  static BoxDecoration cardDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: cardGradient,
    ),
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        spreadRadius: 1,
        blurRadius: 4,
        offset: const Offset(0, 2),
      ),
    ],
  );
}
