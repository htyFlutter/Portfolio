import 'package:isar/isar.dart';
part 'quiz_result.g.dart';

@collection
class QuizResult {
  Id id = Isar.autoIncrement;
  String? title;
  int score = 0;
  double correctAnswerRate = 0.0;
  double totalStudyTime = 0;
}
