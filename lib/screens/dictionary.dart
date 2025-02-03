import 'package:flutter/material.dart';
import 'package:learn_kurmanji_2022/components/vocab_content.dart';
import 'package:learn_kurmanji_2022/components/word_style.dart';

class Dictionary extends StatelessWidget {
  static const String id = 'dictionary';

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
          'هەموو وشەکان',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...vocabNo.expand((vocab) {
                if (vocab is Column) {
                  return vocab.children.where((child) => child is VocabCard);
                }
                return [];
              }).toList(),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
