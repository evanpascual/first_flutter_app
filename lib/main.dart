import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionIndex >= questions.length) {
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Row(children: [
              ElevatedButton(
                  onPressed: _answerQuestion, child: Text('Answer 1')),
              ElevatedButton(
                  onPressed: _answerQuestion, child: Text('Answer 2')),
              ElevatedButton(
                  onPressed: _answerQuestion, child: Text('Answer 3')),
            ]),
          ],
        ),
      ),
    );
  }
}
