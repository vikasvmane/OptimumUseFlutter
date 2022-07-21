import 'dart:async';

import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginScreen()))
            });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
