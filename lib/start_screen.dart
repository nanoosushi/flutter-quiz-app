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
          // Opacity(
          //   opacity: 0.8,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     height: 250,
          //   ),
          // ),
          Image.asset('assets/images/quiz-logo.png',
              width: 250, color: const Color.fromARGB(167, 255, 255, 255)),
          const SizedBox(
            height: 60,
          ),
          Text('Learn Fluter the Fun Way!',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
                backgroundColor: Colors.teal[800],
                padding: const EdgeInsets.only(left: 20, right: 20)),
            icon: const Icon(Icons.arrow_right, color: Colors.white),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
