import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _answerIndex = 0;
  void _answerQuestions() {
    setState(() {
      _answerIndex = _answerIndex + 1;
    });

    print(_answerIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite  color?',
        'answer': ['red', 'green', 'blue', 'yellow ']
      },
      {
        'questionText': 'What\'s your favorite  animal?',
        'answer': ['tiger', 'deer', 'zebra', 'lion ']
      },
      {
        'questionText': 'What\'s your favorite  sports?',
        'answer': ['cricket', 'football', 'basketball', 'handball ']
      },
      {
        'questionText': 'What\'s your favorite  coutry?',
        'answer': ['Bangladesh', 'Sri-laSnka', 'India', 'China ']
      },
      {
        'questionText': 'What\'s your favorite  person?',
        'answer': ['Arifen Shuvo', 'Afran Nisho', 'Apuba', 'Mehezabin ']
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz App'),
            ),
            body: Column(
              children: [
                Questions(questions[_answerIndex]['questionText'] as String),
                ...(questions[_answerIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestions, answer);
                }).toList(),
              ],
            )));
  }
}
