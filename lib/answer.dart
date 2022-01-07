import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectListener;
  final String answer;

  Answer(this.selectListener, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answer,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: selectListener,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
      ),
    );
  }
}
