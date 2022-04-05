import 'package:flutter/material.dart';
import 'package:speedconnect/constants.dart';

import 'Screens/Welcome/welcome_screen.dart';

void main() => runApp(SpeedConnect());

class SpeedConnect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Speed Connect',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
