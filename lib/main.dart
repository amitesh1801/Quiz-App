import 'package:flutter/material.dart';

import './result.dart';
import 'package:first_app/quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What year was the very first model of the iPhone released?',
      'answers': [
        {'text': '2002', 'score': 0},
        {'text': '2004', 'score': 0},
        {'text': '2007', 'score': 1},
        {'text': '2009', 'score': 0}
      ],
    },
    {
      'questionText': 'What\’s the shortcut for the “copy” function on most computers?',
      'answers': [
        {'text': 'ctrl+v', 'score': 0},
        {'text': 'ctrl+z', 'score': 0},
        {'text': 'ctrl+d', 'score': 0},
        {'text': 'ctrl+c', 'score': 1}
      ],
    },
    {
      'questionText': 'How many molecules of oxygen does ozone have?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '3', 'score': 1},
        {'text': '1', 'score': 0}
      ],
    },
    {
      'questionText': 'Which planet has the most gravity?',
      'answers': [
        {'text': 'Jupiter', 'score': 1},
        {'text': 'Mars', 'score': 0},
        {'text': 'Venus', 'score': 0},
        {'text': 'Earth', 'score': 0}
      ],
    },
  ];
  var _questionIndex = 0;
  int _testScore=0;

  void _quizReset(){
    setState(() {
      _questionIndex = 0;
      _testScore=0;
    });
  }
  void _answerQuestion(int score) {
    _testScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(246,247,239, 100),
        title: Text("QUIZ TIME!!!"),
        actions: <Widget>[
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(child: Text('Help')),
              const PopupMenuItem(child: Text('Exit')),
            ];
          }),
        ],
      ),
      body: (_questionIndex < _questions.length)
          ? Quiz(
              questions: _questions,
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex)
          : Result(_testScore, _quizReset),
    ));
  }
}
