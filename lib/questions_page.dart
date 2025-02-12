import 'data/questions.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class Questions extends StatelessWidget {
  Questions({super.key});

  final currentQuestion = questions[1];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              inherit: false,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.getShuffleAnswer().map((e) {
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
