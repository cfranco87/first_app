import 'package:flutter/material.dart';
import 'package:flutter_shakemywidget/flutter_shakemywidget.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

final shakeKey = GlobalKey<ShakeWidgetState>();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  } //currentDiceRoll, dynamically changes the #

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //centering within column
      children: [
        Text(
          'Wano',
          style: GoogleFonts.teko(
            fontSize: 100,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        ShakeMe(
          // pass the GlobalKey as an argument
          key: shakeKey,
          // configure the animation parameters
          shakeCount: 3,
          shakeOffset: 10,
          shakeDuration: const Duration(milliseconds: 500),
          // Add the child widget that will be animated
          child: Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
        ),
        const SizedBox(height: 20),
        FilledButton(
          onPressed: () {
            rollDice();
            shakeKey.currentState?.shake();
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              //padding creates space around widget
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: Text(
            'Roll Dice',
            style: GoogleFonts.teko(
              fontSize: 25,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
