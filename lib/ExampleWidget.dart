import 'package:flutter/material.dart';

import './Quiz.dart';
import 'Result.dart';
import 'dto/QuestionDTO.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// _ in the name makes this app private to this file
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion() {
    this._totalScore += 1;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  var questions = [
    QuestionDTO(
        'What\'s your favorite color?', ['Black', 'Red', 'Green', 'White']),
    QuestionDTO('What\'s your favorite animal?',
        ['Dog', 'Cat', 'Rabbit', 'Snake', 'Elephant']),
    QuestionDTO('Who is your favorite instructor?',
        ['Rajan', 'Rajan', 'Rajan', 'Rajan']),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first App'),
            ),
            body: _questionIndex < questions.length
                  ? Quiz(questions, _questionIndex, _answerQuestion)
                  : Result(this._totalScore)
        ));
  }
}
