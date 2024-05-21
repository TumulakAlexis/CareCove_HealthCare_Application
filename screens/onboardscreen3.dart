import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 69, 57),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: Image.asset('assets/onboard3.png'),
            ),
            const SizedBox(height: 20,),
            const Text(
            "Get Informed",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white),
            ),
            const SizedBox(
            width: 250,
            height: 10,
          ),
          const Text(
            "Provides Information for your daily needs",
            style: TextStyle(color: Colors.white),
            
          ),
          ],
        ),
      ),
    );
  }
}