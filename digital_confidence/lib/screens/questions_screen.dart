import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionScreen extends StatefulWidget {
  final List<Question> questions;
  final String username;

  QuestionScreen({required this.questions, required this.username});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 0;
  int score = 0;

  void checkAnswer(int selectedIndex) {
    Question question = widget.questions[currentIndex];

    bool isCorrect = selectedIndex == question.correctIndex;

    if (isCorrect) score++;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(isCorrect ? "Right Answer 🎉" : "Wrong Answer ❌"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              isCorrect
                  ? "assets/thief_sad.png"
                  : "assets/thief_waiting.png",
              height: 100,
            ),
            SizedBox(height: 10),
            Text(question.explanation),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              nextQuestion();
            },
            child: Text("Next"),
          )
        ],
      ),
    );
  }

  void nextQuestion() {
    if (currentIndex < widget.questions.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Level Completed!"),
          content: Text(
              "${widget.username}, you scored $score out of ${widget.questions.length}"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Question question = widget.questions[currentIndex];

    return Scaffold(
      backgroundColor: Color(0xFF0D1B2A),
      appBar: AppBar(
        title: Text("Digital Confidence"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset("assets/thief_waiting.png", height: 120),
            SizedBox(height: 20),

            Text(
              question.question,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),

            SizedBox(height: 20),

            ...List.generate(question.options.length, (index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () => checkAnswer(index),
                  child: Text(question.options[index]),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}