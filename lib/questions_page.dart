import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blueAccent, Colors.lightBlue]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnswerButton('Answer..1', () {}),
          const SizedBox(
            height: 15,
          ),
          AnswerButton('Answer..2', () {}),
          const SizedBox(
            height: 15,
          ),
          AnswerButton('Answer..3', () {}),
          const SizedBox(
            height: 15,
          ),
          AnswerButton('Answer..4', () {}),
        ],
      ),
    );
  }
}
