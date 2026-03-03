import '../models/question.dart';

List<Question> elderlyQuestions = [
  Question(
    question: "You receive a message saying you won a lottery. What should you do?",
    options: [
      "Click the link immediately",
      "Ignore and delete the message",
      "Send your bank details"
    ],
    correctIndex: 1,
    explanation:
        "Lottery scams try to trick you into giving personal details.",
    level: 1,
  ),
  Question(
    question: "Someone calls saying your relative is in digital arrest and needs money urgently.",
    options: [
      "Send money immediately",
      "Call your relative directly to confirm",
      "Share your OTP"
    ],
    correctIndex: 1,
    explanation:
        "Always verify directly with your family before sending money.",
    level: 2,
  ),
];