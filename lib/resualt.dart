import 'package:flutter/material.dart';

class Resualt extends StatelessWidget {
  const Resualt(this.selectedAnswerResualt, {super.key});

  final List<String> selectedAnswerResualt;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...selectedAnswerResualt.map((e) => Text(
                  e,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    inherit: false,
                  ),
                )),
            const SizedBox(
              height: 35,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Restart Quiz !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    inherit: false,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
