import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              backgroundColor: const Color.fromARGB(200, 255, 255, 255),
              foregroundColor: Colors.blue[600]),
          child: Text(
            answerText,
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          )),
    );
  }
}
