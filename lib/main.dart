// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flashcards/flashcard.dart';
import 'package:flashcards/flashcard_view.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<FlashCard> _flashcards = [
    FlashCard(
        question: "What Programmiong language does flutter use?",
        answer: "Dart"),
    FlashCard(
        question: "What Programmiong language does Bhanu use?",
        answer: "Nothing"),
    FlashCard(
        question: "What Programmiong language does Avi use?",
        answer: "Nothing"),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: FlipCard(
                  front:
                      FlashcardView(text: _flashcards[_currentIndex].question),
                  back: FlashcardView(text: _flashcards[_currentIndex].answer),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                      onPressed: showPreviousCard,
                      icon: Icon(Icons.chevron_left),
                      label: Text("prev")),
                  OutlinedButton.icon(
                      onPressed: showNextCard,
                      icon: Icon(Icons.chevron_right),
                      label: Text("Next")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showNextCard() {
    setState(() {
      _currentIndex =
          _currentIndex + 1 < _flashcards.length ? _currentIndex + 1 : 0;
    });
  }

  void showPreviousCard() {
    setState(() {
      _currentIndex =
          (_currentIndex - 1 >= 0) ? _currentIndex - 1 : _flashcards.length - 1;
    });
  }
}
