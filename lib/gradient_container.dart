import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2,
      {super.key}); //positional parameters, only 2 colors allowed

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      //returning everything below
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2], //list of 2 colors
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
