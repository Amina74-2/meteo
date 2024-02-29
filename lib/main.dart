import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';
import 'weather.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentAnimationIndex = 0;

  final List<String> animationAssets = [
    "assets/wind-day.json",
    "assets/woman-enjoying-rain-day.json",
    "assets/woman-taking-sunbath-on-beach.json",
  ];

  @override
  void initState() {
    super.initState();
    _startAnimationTimer();
  }

  void _startAnimationTimer() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (timer.tick == 3) {
        timer.cancel(); 
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Weather()));
      } else {
        setState(() {
          currentAnimationIndex = (currentAnimationIndex + 1) % animationAssets.length;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Lottie.asset(
          animationAssets[currentAnimationIndex],
          width: 400,
          height: 400,
        ),
      ),
    );
  }
}