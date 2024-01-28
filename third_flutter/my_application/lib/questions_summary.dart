import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            children: summaryData.map(
              (data) {
                final dynamic colorIndicator;
                if (data['user_answer'] != data['correct_answer']) {
                  colorIndicator = const Color.fromARGB(255, 149, 51, 248);
                } else {
                  colorIndicator = const Color.fromARGB(255, 86, 212, 250);
                }
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: colorIndicator,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data['question'] as String,
                              style: GoogleFonts.lato(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 247, 226, 248),
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['user_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 149, 51, 248),
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 86, 212, 250),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
