import 'data/questions.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class Questions extends StatelessWidget {
  Questions({super.key});

  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blueAccent, Colors.lightBlue]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.answers.map((e) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: AnswerButton(e, () {}),
            );
          })
        ],
      ),
    );
  }
}
