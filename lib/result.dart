import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function() resetListener;

  Result(this.score, this.resetListener);

  String get result {
    var msg = "You did it";
    if (score <= 20) {
      msg = "You are awesome";
    } else if (score <= 25) {
      msg = "You are likeable";
    } else if (score <= 30) {
      msg = "You are shit";
    } else {
      msg = "You are bad guy";
    }
    return msg;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            result,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(onPressed: resetListener, child: Text("Restart"))
        ],
      ),
    );
  }
}
