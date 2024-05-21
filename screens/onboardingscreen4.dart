import 'package:flutter/material.dart';

class OnboardingScreen4 extends StatelessWidget {
  const OnboardingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 55, 157, 191),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: Image.asset('assets/onboard4.png'),
            ),
            const SizedBox(height: 20,),
            const Text(
            "Medicine Reservations",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white),
            ),
            const SizedBox(
            width: 250,
            height: 10,
          ),
          const Text(
            "Get the best medicines in South Cotabato",
            style: TextStyle(color: Colors.white),
            
          ),
          ],
        ),
      ),
    );
  }
}