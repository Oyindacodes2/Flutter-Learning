import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './image.dart';

class StartPage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<StartPage> {
  int _addcnt = 0;

  var _questionIndex = 0;

  int _score = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What is the alter ego of Captain America?',
      'answers': [
        {'text': 'Wade wilson', 'score': 0},
        {'text': 'Bruce Wayne', 'score': 0},
        {'text': 'Steve Rogers', 'score': 10},
        {'text': 'Ted stoner', 'score': 0}
      ],
    },
    {
      'questionText': 'What year was hollywood brought into the light?',
      'answers': [
        {'text': '1934', 'score': 0},
        {'text': '1903', 'score': 10},
        {'text': '1892', 'score': 0},
        {'text': '1910', 'score': 0}
      ],
    },
    {
      'questionText': 'Which of the following is a DC movie?',
      'answers': [
        {'text': 'Star wars', 'score': 0},
        {'text': 'The Batman', 'score': 10},
        {'text': 'Avengers', 'score': 0},
        {'text': 'Harry Potter', 'score': 0}
      ],
    }
  ];

  void _incrementCnt() {
    setState(() {
      _addcnt++;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  void _returnBack() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
      _totalScore = 0;
    });
  }

  void _correctAns() {
    setState(() {
      _score += 1;
    });
  }

  String collectQuestion() {
    return _questions[_questionIndex]['questionText'];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ]),
      body: Container(
          child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              _questionIndex < _questions.length
                  ? Quiz(
                      collectQuestion: collectQuestion,
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                      correctAns: _correctAns,
                      score: _score,
                    )
                  : Result(
                      returnBack: _returnBack,
                      questionIndex: _questionIndex,
                      score: _score,
                      totalScore: _totalScore,
                    ),
            ],
          ),
          
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCnt,
        child: Icon(Icons.add),
      ),
    );
  }
}
