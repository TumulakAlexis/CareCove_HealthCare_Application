import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen1 extends StatelessWidget {
  OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset('assets/onboard1.png')
            ),
          ),
          
          const SizedBox(
            width: 250,
            height: 20,
          ),
          const Text(
            "Search Doctor",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white),
            
          ),
          const SizedBox(
            width: 250,
            height: 10,
          ),
          const Text(
            "Get list of the best doctors in South Cotabato",
            style: TextStyle(color: Colors.white),
            
          ),
          
        ],
      ),
    ));
  }
}
