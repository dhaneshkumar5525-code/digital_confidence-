import 'package:flutter/material.dart';
import 'screens/terms_screen.dart';

void main() {
  runApp(DigitalConfidenceApp());
}

class DigitalConfidenceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Digital Confidence",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0D1B2A),
        scaffoldBackgroundColor: Color(0xFF0D1B2A),
        fontFamily: 'Arial',
      ),
      home: TermsScreen(),
    );
  }
}