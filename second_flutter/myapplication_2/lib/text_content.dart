import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  // here this.outputText means If constructor is called with any string argument
  //  key then it will be passed to class's outputText property
  const TextContent(this.outputText, {super.key});

  final String outputText;
  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
