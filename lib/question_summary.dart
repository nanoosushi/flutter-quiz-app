import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: data['user_answer'] == data['correct_answer']
                          ? const Color.fromARGB(255, 99, 255, 169)
                          : const Color.fromARGB(255, 255, 172, 170)),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  // flex main axis
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'].toString(),
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 255, 172, 170),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 99, 255, 169),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
