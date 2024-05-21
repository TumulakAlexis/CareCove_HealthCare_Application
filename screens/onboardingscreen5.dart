import 'package:care_cove/screens/signinscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen5 extends StatelessWidget {
  const OnboardingScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Container(
                width: 300,
                height: 300,
                child: Lottie.asset('assets/carecove.json'),
              ),
            ),
            const SizedBox(height: 0,),
            const Text(
            "CareCove!",
            style: TextStyle(
            fontSize: 50,
            fontFamily: 'Fresh',
            color: Colors.brown),
            ),
            
          const Text(
            "A Cove for Care",
            style: TextStyle(color: Colors.brown),
            
          ),
          const SizedBox(height: 150,),
          ElevatedButton(onPressed: (){
            Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()));
          }, 
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.brown)
          ),
          child: const Text('Get Started!',
          style: TextStyle(color: Colors.white),))

          ],
        ),
      ),
    );
  }
}