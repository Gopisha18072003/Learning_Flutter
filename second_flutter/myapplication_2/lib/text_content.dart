import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  const TextContent({super.key});

  @override
  Widget build(context) {
    return const Text(
      "Hello World, I am Gopi",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
