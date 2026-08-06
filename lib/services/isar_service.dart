import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portfolio/screens/quiz_screen/quiz_result.dart';

class IsarService {
  Future<void> saveQuizResult(QuizResult newResult) async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open([QuizResultSchema], directory: dir.path);

    await isar.writeTxn(() async {
      await isar.quizResults.put(newResult);
    });
  }

  IsarService._internal();
  static final IsarService instance = IsarService._internal();

  late final Isar _isar;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar =
        Isar.getInstance() ??
        await Isar.open([QuizResultSchema], directory: dir.path);
  }

  Future<void> saveQuestionsResults(QuizResult newResult) async {
    await _isar.writeTxn(() async {
      await _isar.quizResults.put(newResult);
    });
  }

  Future<List<QuizResult>> getAllQuestionResults() async {
    return await _isar.quizResults.where().findAll();
  }
}
