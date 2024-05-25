import 'package:flutter/material.dart';
import 'dart:math';



class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  
  void rollDice() {
    setState(() {
      int randomNum = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$randomNum.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            // onLongPress: Text("Hello"),
            style: TextButton.styleFrom(
                // padding: EdgeInsets.only(top: 20),
                backgroundColor: Colors.white38,
                foregroundColor: Colors.black,
                textStyle: TextStyle(
                  fontSize: 20,
                )),
            child: Text("Roll a die")),
      ],
    );
  }
}
