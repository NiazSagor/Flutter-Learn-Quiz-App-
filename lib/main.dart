import 'package:flutter/material.dart';
import 'package:flutter_basic_quizapp/quiz.dart';
import 'package:flutter_basic_quizapp/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// this class preserve the state
// so in order to trigger a re render we need to call setState() method where necessary
//_MyAppState here _ indicates that the class is private
// _ before anything indicates that this is private to this file only
class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  final questions = [
    {
      "question": "What's your favorite color?",
      "options": [
        {"text": "Black", "score": 10},
        {"text": "Blue", "score": 8},
        {"text": "Yellow", "score": 4},
      ]
    },
    {
      "question": "What's your favorite animal?",
      "options": [
        {"text": "Dog", "score": 10},
        {"text": "Cat", "score": 12},
        {"text": "Cow", "score": 43},
      ]
    },
    {
      "question": "What's your favorite country?",
      "options": [
        {"text": "UK", "score": 41},
        {"text": "Canada", "score": 12},
        {"text": "Germany", "score": 43},
      ]
    },
  ];

  int total = 0;

  void answerQuestion(int score) {
    setState(() {
      total += score;
      // this re renders the ui
      questionIndex += 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                currentIndex: questionIndex,
                answerQuestion:
                    answerQuestion, // passing the address of the function
              )
            : Result(total, resetQuiz),
      ),
    );
  }
}
