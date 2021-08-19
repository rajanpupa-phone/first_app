import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText = "You did id!";
    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable';
    } else {
      resultText = 'You are Strange!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ));
      }
}
