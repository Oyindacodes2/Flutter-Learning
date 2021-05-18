import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function collectQuestion;
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final int score;
  final Function correctAns;

  Quiz(
      {@required this.collectQuestion,
      @required this.answerQuestion,
      @required this.questionIndex,
      @required this.questions,
      @required this.score,
      @required this.correctAns,}
      );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(collectQuestion()),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((ans) {
          return Answer(ans['text'],()=> answerQuestion(ans['score']) , score, correctAns);
        }).toList()
      ],
    );
  }
}
