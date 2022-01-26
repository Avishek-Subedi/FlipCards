// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FlashcardView extends StatelessWidget {
  final String text;

  const FlashcardView({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
