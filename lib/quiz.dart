import 'package:flutter/material.dart';
import 'package:flutter_basic_quizapp/Question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  // required
  // questions list, current index, select listener

  final List<Map<String, Object>> questions;
  final int currentIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.currentIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[currentIndex]["question"].toString()),

        // iterating through questions' options and transforming each of them into answer widget
        // making a list of answer widget
        ...(questions[currentIndex]["options"] as List<Map<String, Object>>)
            .map((e) {
          /*
          * () indicates an anonymous void function
          * this type of function does not get compiled
          * this only works in run time
          * inside it there is the original work that we want to do upon clicking a button
          * so at runtime if user presses the button, () executes not answerQuestion
          * and upon invoking (), the code inside it gets executed
          * */
          return Answer(() => answerQuestion(e["score"]), e["text"].toString());
        }).toList()
      ],
    );
  }
}
