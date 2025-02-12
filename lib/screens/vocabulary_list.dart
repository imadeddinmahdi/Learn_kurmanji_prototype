import 'package:flutter/material.dart';

class Vocab extends StatelessWidget {
  static const String id = 'vocab_list';

  const Vocab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
