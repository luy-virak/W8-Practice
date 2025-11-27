import 'package:flutter/material.dart';

import 'ui/screens/welcome_screen.dart';
 
class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool _WelcomeScreen = true;

  void _switchScreen() {
    setState(() {
      _WelcomeScreen = false;
    });
  }
  
  @override
  Widget build(context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: _WelcomeScreen ? WelcomeScreen(onStart: _switchScreen) : TemperatureApp(),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
