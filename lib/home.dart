import 'resualt.dart';
import 'dart:developer';
import 'questions_page.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> selectedAnswer = [];

  void chosesAnswer(BuildContext context, String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resualt(selectedAnswer),
          ),
        );
        selectedAnswer = [];
      });
    }
    log(selectedAnswer.toString());
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
            ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.black54),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )),
              icon: const Icon(
                Icons.start_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Questions((answer) => chosesAnswer(context, answer)),
                ));
              },
              label: const Text(
                "Start Learning",
                style: TextStyle(
                  color: Colors.white,
                  inherit: false,
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
