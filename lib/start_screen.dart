import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(159, 229, 226, 225),
          ),
          const SizedBox(
            height: 30,
          ),
          Text('QUizapp',
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 229, 145, 223),
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
