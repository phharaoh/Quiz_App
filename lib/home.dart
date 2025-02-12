import 'questions_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Questions(),
                ));
              },
              label: const Text(
                "Start Learning",
                style: TextStyle(
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
