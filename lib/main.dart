import 'package:flutter/material.dart';
import 'package:flutter_basic_quizapp/Question.dart' as q;
import 'package:flutter_basic_quizapp/answer.dart';

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

  void answerQuestion() {
    setState(() {
      // this re renders the ui
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "question": "What's your favorite color?",
        "options": ["Black", "Blue", "Yellow"]
      },
      {
        "question": "What's your favorite animal?",
        "options": ["Chicken", "Dog", "Cow", "Elephant"]
      },
      {
        "question": "What's your favorite country?",
        "options": ["UK", "USA", "India"]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
        ),
        body: Column(
          children: [
            q.Question(questions[questionIndex]["question"].toString()),

            // iterating through questions' options and transforming each of them into answer widget
            // making a list of answer widget
            ...(questions[questionIndex]["options"] as List<String>).map((e) {
              return Answer(answerQuestion, e);
            }).toList()
          ],
        ),
      ),
    );
  }
}
