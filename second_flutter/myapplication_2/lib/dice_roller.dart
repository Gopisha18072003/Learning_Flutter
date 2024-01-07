import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var currentDiceNumber = 2;
  void rollDice() {
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceNumber.png',
          width: 200,
        ),
        // Alternative approach to give spacing between them
        // const SizedBox(height: 20,),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            //padding: EdgeInset.only(top:)
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
