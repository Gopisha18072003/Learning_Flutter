import 'package:flutter/material.dart';
// import 'package:myapplication_2/text_content.dart';
import 'package:myapplication_2/dice_roller.dart';

// final is used when variable should dynamically assigned value at runtime
// const is used when variable should assigned value at compile time
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}) : super(key: key);
  const GradientContainer({super.key, required this.colors});
  // here super.key means If constructor is called with named argument key then
  // it will be passed to super's key named argument
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      //multiple constructor
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}

// function can take two types of argument -
// 1. positional argument (required)
// e.g. int add(a, b) {
//          return a+b;
// }
// 2. named argument (optional)
// e.g. int add({a, b}) {
// }

// we can made positional argumnet as optional by adding [] around argument
// e.g int add(a, [b])

// we can add default value to an optional argument
// e.g. int add(a, [b=3])

// we can also do this
// e.g. int add({a=3, b= 2})