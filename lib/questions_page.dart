import 'answer_button.dart';
import 'data/questions.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions(
    this.onSelectedAnswer, {
    super.key,
  });

  final void Function(String) onSelectedAnswer;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentIndixQuestion = 0;

  void answerQuestion(String answer) {
    widget.onSelectedAnswer(answer);

    setState(() {
      currentIndixQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndixQuestion];

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
              child: AnswerButton(e, () => answerQuestion(e)),
            );
          })
        ],
      ),
    );
  }
}
