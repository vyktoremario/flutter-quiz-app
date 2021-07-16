import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 6},
        {'text': 'Yellow', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s the name of John\'s secondary school?',
      'answers': [
        {'text': 'Cedar', 'score': 7},
        {'text': 'Unity', 'score': 8},
        {'text': 'Gifted Hands', 'score': 10},
        {'text': 'Hand Maids', 'score': 9}
      ]
    },
    {
      'questionText': 'Who\'s your favorite Musician?',
      'answers': [
        {'text': 'Kirk Franklin', 'score': 9},
        {'text': 'Sinach', 'score': 8},
        {'text': 'Theophilus Sunday', 'score': 10},
        {'text': 'GUC', 'score': 10}
      ]
    },
    {
      'questionText': 'Who\'s your favorite Actor?',
      'answers': [
        {'text': 'Jason Statham', 'score': 10},
        {'text': 'George Cloney', 'score': 9},
        {'text': 'Brad pitt', 'score': 7},
        {'text': 'Dwayne Johnson', 'score': 7}
      ]
    },
    {
      'questionText': 'Who\'s your favorite Actress?',
      'answers': [
        {'text': 'Amandler Stamberg', 'score': 9},
        {'text': 'Emma Watson', 'score': 9},
        {'text': 'Scarlet Johnasson', 'score': 9},
        {'text': 'Jennifer Aniston', 'score': 9}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print('Answer was Choosen!');
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('My First App'),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [Colors.green, Colors.blue])),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
