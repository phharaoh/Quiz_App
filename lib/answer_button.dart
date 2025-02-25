import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answertext, this.onpressed, {super.key});

  final String answertext;
  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.black54,
        padding: const EdgeInsets.all(10),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        foregroundColor: Colors.white,
      ),
      child: Text(
        answertext,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
