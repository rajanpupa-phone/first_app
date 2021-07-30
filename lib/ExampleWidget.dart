import 'package:flutter/material.dart';

import './Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// _ in the name makes this app private to this file
class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion(){
    setState(() {
      questionIndex = questionIndex + 1;
    });
      print(questionIndex);
    }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
      ""
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first App'),
            ),
            body: Column(
              children: [
                Question(questions.elementAt( questionIndex )),
                RaisedButton(
                  child: Text("Answer 1"),
                  onPressed: () => answerQuestion(),
                ),
                RaisedButton(
                  child: Text("Answer 2"),
                  onPressed: () => answerQuestion(),
                ),
                RaisedButton(
                  child: Text("Answer 3"),
                  onPressed: ()=> answerQuestion(),
                ),
              ],
            )));
  }
}
