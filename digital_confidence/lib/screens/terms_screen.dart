import 'package:flutter/material.dart';
import 'profile_screen.dart';

class TermsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png", height: 120),
            SizedBox(height: 30),
            Text(
              "Welcome to Digital Confidence",
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "This is a cybersecurity awareness training app designed for elderly people, parents, students, and office workers.\n\nThis app is non-profit and created for digital safety awareness only.",
              style: TextStyle(color: Colors.white70, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ProfileScreen()));
              },
              child: Text("Agree & Continue", style: TextStyle(fontSize: 18)),
            )
          ],
        ),
      ),
    );
  }
}