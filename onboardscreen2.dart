import 'package:care_cove/screens/signinscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen2 extends StatelessWidget {
  OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.white,
          Colors.brown,
        ],
      )),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: Lottie.asset(
                'assets/carecove.json',
              ),
            ),
            Text(
              "      Welcome To",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
            ),
            Text(
              " CareCove!",
              style: TextStyle(
                  fontFamily: 'Fresh', fontSize: 50, color: Colors.brown),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 350,
              child: Text(
                "CareCove revolutionizes healthcare access by seamlessly connecting patients with medical professionals, providing a comprehensive platform for virtual consultations, remote monitoring, and personalized care plans, all within a user-friendly interface designed to prioritize patient well-being.",
                style: TextStyle(
                    color: Color.fromARGB(255, 116, 88, 78),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: Text(
                "CareCove ensures timely consultations and personalized care plans tailored to your needs. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 116, 88, 78),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.brown, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    ));
  }
}
