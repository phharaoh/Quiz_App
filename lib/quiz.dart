import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
   const Quiz({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.lightBlue],
        ),
      ),
    );
  }
}
