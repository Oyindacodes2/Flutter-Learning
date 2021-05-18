import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  final Function returnBack;
  final int questionIndex;
  final int score;
  final int totalScore;

  Result(
      {@required this.returnBack,
      @required this.questionIndex,
      @required this.score,
      @required this.totalScore});

  String get resultPhrase {
    String resultText = 'You did it!';
    if (score <= 2) {
      resultText = 'You did ok';
    } else if (score <= 1) {
      resultText = 'You tried small sha';
    } else {
      resultText = 'You be boss';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  resultPhrase,
                  style: TextStyle(color: Colors.green[800]),
                ),
                width: double.infinity,
                margin: const EdgeInsets.only(left: 50),
              ),
              Container(
                child: Text(
                  'Total question answered: $questionIndex',
                  style: TextStyle(fontSize: 18, color: Colors.purple[700]),
                ),
                width: double.infinity,
                margin: const EdgeInsets.only(left: 80),
              ),
              Container(
                child: Text('Score gotten: $score'),
                width: double.infinity,
                margin: EdgeInsets.only(left: 170),
              ),
              Container(
                child: Text('Total Score: $totalScore',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                width: double.infinity,
                margin: EdgeInsets.only(left: 220),
              )
            ],
          ),
        ),
        RaisedButton(
          child: Text('Retake Questions'),
          onPressed: returnBack,
        )
      ],
    );
  }
}
