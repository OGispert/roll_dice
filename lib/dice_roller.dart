import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roll_dice/sltyled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var result = 1;

  void rollDice() {
    setState(() {
      result = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$result.png', width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(padding: EdgeInsets.only(top: 80)),
          child: StyledText('Roll the dice!'),
        ),
      ],
    );
  }
}
