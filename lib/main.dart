// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                  front: FlashcardView(text: "this is the front "),
                  back: FlashcardView(text: "this is the back of the card"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_left),
                      label: Text("prev")),
                  OutlinedButton.icon(
                      onPressed: () {},
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
}
