import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

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
    return PhysicalModel(
      color: Colors.transparent,
      elevation: 1.0,
      borderRadius: BorderRadius.circular(5),
      child: Column(
        mainAxisSize: MainAxisSize.min, //centering within column
        children: [
          Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
          const SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
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
          ),
        ],
      ),
    );
  }
}
