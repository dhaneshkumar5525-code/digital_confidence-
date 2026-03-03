class Question {
  String question;
  List<String> options;
  int correctIndex;
  String explanation;
  int level;

  Question({
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
    required this.level,
  });
}