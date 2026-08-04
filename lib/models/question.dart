import 'package:portfolio/enum/difficulty.dart';

class Question {
  final int id;
  final String category;
  final String question;
  final List<String> options;
  final int answerIndex;
  final Difficulty level;
  final String explanation;

  const Question({
    required this.id,
    required this.category,
    required this.question,
    required this.options,
    required this.answerIndex,
    required this.level,
    required this.explanation,
  });

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] ?? 0,
      category: map['category'] ?? '',
      question: map['question'] ?? '',
      options: List<String>.from(map['options']),
      answerIndex: map['answerIndex'] ?? 0,
      level: Difficulty.values.firstWhere((e) => e.name == map['level'], orElse: () => Difficulty.normal),
      explanation: map['explanation'] ?? '',
    );
  }
}
