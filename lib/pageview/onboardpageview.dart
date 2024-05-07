import 'package:care_cove/screens/onboardingscreen1.dart';
import 'package:care_cove/screens/onboardscreen2.dart';
import 'package:flutter/material.dart';


class OnboardPageView extends StatelessWidget {
  const OnboardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      body: PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: [
        OnboardingScreen1(),
        OnboardingScreen2()
      ],
      ),
    );
  }
}