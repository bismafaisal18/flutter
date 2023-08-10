import 'package:flutter/material.dart';
import 'package:quizapp_bharatintern_flutterapp_task3/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      theme:ThemeData(
          primaryColor: Colors.purple.shade100
      ),
      home:SplashScreen(),
    );
  }
}
