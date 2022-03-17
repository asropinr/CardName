import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const HomePageScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF202020),
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/BG Splash Screen.png"),
          ),
          Image(
            image: AssetImage("assets/Splash Screen Title.png"),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Lottie.asset(
              'assets/50821-white-loading.json',
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
