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
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.all(10),
        shape: const RoundedRectangleBorder(),
        foregroundColor: Colors.white,
      ),
      child: Text(answertext,textAlign: TextAlign.center,),
    );
  }
}
