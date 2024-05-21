
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class OnboardingScreen2 extends StatelessWidget {
  OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: Image.asset('assets/onboard2.png'),
            ),
            const SizedBox(height: 20,),
            const Text(
            "Book Appointment",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white),
            ),
            const SizedBox(
            width: 250,
            height: 10,
          ),
          const Text(
            "Book an appointment with the right doctor.",
            style: TextStyle(color: Colors.white),
            
          ),
          ],
        ),
      ),
    );
  }
}
