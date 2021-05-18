import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String ans;
  final Function ansFunc;
  final int score;
  final Function correctAns;

  void checkAns() {
    ansFunc();
    if (ans == "Steve Rogers" || ans == "1903" || ans == "The Batman") {
      correctAns();
    }
  }

  Answer(this.ans, this.ansFunc, this.score, this.correctAns);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(ans),
        onPressed: checkAns,
      ),
    );
  }
}
