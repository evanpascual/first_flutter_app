import 'package:first_flutter_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Green', 'Blue']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Bird']
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['Pizza', 'Pasta', 'Sushi']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(),
      ),
    );
  }
}
