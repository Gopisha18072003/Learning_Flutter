import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final VoidCallback startQuiz;
  @override
  Widget build(context) {
    const title = 'Learn Flutter the fun way!';
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity widget is not optimized
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 280,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 64,
          ),
          Text(
            title,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 226, 207, 249),
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(
                255,
                222,
                198,
                248,
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
