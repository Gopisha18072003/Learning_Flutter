import 'package:flutter/material.dart';
import 'package:myapplication_2/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 32, 5, 65),
            Color.fromARGB(255, 89, 14, 129),
          ],
        ),
      ),
    ),
  );
}
