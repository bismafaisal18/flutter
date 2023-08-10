import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp_bharatintern_flutterapp_task3/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/front.png'), // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}


