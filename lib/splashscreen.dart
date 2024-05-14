import 'package:flutter/material.dart';
import 'package:flutter_class/add_new_task.dart';

import 'landing_page.dart';


class SplashScrc extends StatefulWidget {
  const SplashScrc({Key? key}) : super(key: key);

  @override
  _SplashScrcState createState() => _SplashScrcState();
}

class _SplashScrcState extends State<SplashScrc> {
  @override
  void initState() {
    super.initState();
   // moveToNextScreen();
  }

  Future<void> moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LandingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    moveToNextScreen();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset("assets/jpg/bird-8615360_1280.jpg"),
        ],
      ),
    );
  }
}
