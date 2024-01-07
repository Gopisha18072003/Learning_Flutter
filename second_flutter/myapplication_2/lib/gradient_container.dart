import 'package:flutter/material.dart';
import 'package:myapplication_2/text_content.dart';

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}) : super(key: key);
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 7, 59),
            Color.fromARGB(255, 83, 43, 151),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: TextContent()),
    );
  }
}
