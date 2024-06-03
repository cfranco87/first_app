import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage(
      {super.key}); //positional parameters, only 2 colors allowed

  @override
  Widget build(context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/wano.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(
            child: DiceRoller(),
          ),
        ),
      ],
    );
  }
}
