import 'package:flutter/material.dart';
import '../data/questions.dart';
import 'question_screen.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  final String category;

  HomeScreen({required this.username, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$username's Digital Safety"),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select your quiz category: $category",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => QuestionScreen(
                      questions: elderlyQuestions, // Change based on category
                      username: username,
                    ),
                  ),
                );
              },
              child: Text("Start Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}