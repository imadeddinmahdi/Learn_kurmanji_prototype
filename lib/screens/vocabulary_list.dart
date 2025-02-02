import 'package:flutter/material.dart';

class Vocab extends StatelessWidget {
  static const String id = 'vocab_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Text(
                'بەم زوانە دێت',
              )
            ],
          ),
        ),
      ),
    );
  }
}
