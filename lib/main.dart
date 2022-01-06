import 'package:flutter/material.dart';
import 'package:flutter_basic_quizapp/Question.dart' as q;

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
      "What's your favorite color?",
      "What's your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
        ),
        body: Column(
          children: [
            q.Question(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1")),
            // answerQuestion only executes the function, does not expect any return value
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 2")),
            ElevatedButton(
                onPressed: () => print("Answer 3 chosen"),
                child: Text("Answer 3"))
            // anonymous function
          ],
        ),
      ),
    );
  }
}
