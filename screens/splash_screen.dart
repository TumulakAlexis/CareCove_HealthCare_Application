import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:care_cove/pageview/onboardpageview.dart'; // Adjust import path as needed

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    _controller = VideoPlayerController.asset('assets/splash.mp4');

    await _controller.initialize();

    setState(() {
      print("Video initialized");
      _controller.play();
    });

    _controller.addListener(_checkVideoStatus);
  }

  void _checkVideoStatus() {
    if (_controller.value.isInitialized &&
        _controller.value.position == _controller.value.duration) {
      print("Video finished");
      _navigateToNextScreen();
    }
  }

  void _navigateToNextScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => OnboardPageView()),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),
          if (!_controller.value.isInitialized)
            Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
