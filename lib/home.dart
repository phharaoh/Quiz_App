import 'dart:developer';
import 'questions_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> selectedAnswer = [];

  void chosesAnswer(String answer) {
    log(answer);
    selectedAnswer.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/quiz-logo.png',
              width: 250,
              height: 250,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Let's Learn Flutter!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                inherit: false,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            OutlinedButton.icon(
              style: const ButtonStyle(
                elevation: WidgetStatePropertyAll(20.0),
              ),
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Questions(chosesAnswer),
                ));
              },
              label: Text(
                "Start Learning",
                style: GoogleFonts.sigmar(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
