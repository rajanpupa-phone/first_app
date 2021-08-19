import 'package:flutter/material.dart';

import 'Answer.dart';
import 'Question.dart';
import 'dto/QuestionDTO.dart';

class Quiz extends StatelessWidget{
  final List<QuestionDTO> questions;
  final int questionIndex;
  final VoidCallback clickHandler;

  Quiz( @required this.questions, @required this.questionIndex,@required this.clickHandler );

  @override
  Widget build(BuildContext context) {
    return Column(
        children: buildChildren(questionIndex)
    );
  }

  /*
  * Builds the Question Widget and Answer widgets
  */
  List<Widget> buildChildren(int index) {
    List<Widget> children = [];
    if(index >= questions.length) {
      children.add(Question("No More questions to Answer"));
      return children;
    }
    // add widgets to the list and return
    children.add( Question(questions.elementAt(index).questionText) );
    for ( String ans in questions.elementAt(index).answers ) {
      children.add( Answer(clickHandler, ans));
    }
    return children;
  }

}