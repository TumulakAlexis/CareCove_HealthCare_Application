import 'package:care_cove/screens/onboardingscreen1.dart';
import 'package:care_cove/screens/onboardingscreen4.dart';
import 'package:care_cove/screens/onboardingscreen5.dart';
import 'package:care_cove/screens/onboardscreen2.dart';
import 'package:care_cove/screens/onboardscreen3.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardPageView extends StatefulWidget {
  const OnboardPageView({super.key});

  @override
  _OnboardPageViewState createState() => _OnboardPageViewState();
}

class _OnboardPageViewState extends State<OnboardPageView> {
  final LiquidController _liquidController = LiquidController();

  @override
  Widget build(BuildContext context) {
    final pages = [
      OnboardingScreen1(),
      OnboardingScreen2(),
      OnboardingScreen3(),
      OnboardingScreen4(),
      OnboardingScreen5()
    ];

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: pages,
            fullTransitionValue: 1000,
            waveType: WaveType.liquidReveal,
            enableLoop: false,
            liquidController: _liquidController,
            onPageChangeCallback: (index) {
              setState(() {}); // Update the slider on page change
            },
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: AnimatedSmoothIndicator(
                activeIndex: _liquidController.currentPage,
                count: pages.length,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  type: WormType.thin,
                  activeDotColor: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
