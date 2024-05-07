import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen1 extends StatelessWidget {
  OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: SizedBox(
              width: 400,
              height: 400,
              child: Lottie.asset(
                'assets/carecove.json',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 50,
            height: 225,
          ),
          Text(
            "Welcome to CareCove!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
            height: 5,
          ),
          Icon(Icons.keyboard_double_arrow_down)
        ],
      ),
    ));
  }
}
