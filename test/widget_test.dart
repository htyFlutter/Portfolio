import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/models/question.dart';

void main() {
  test('問題データからQuestionオブジェクトに正しく変換できること', () {
    final testData = {
      'id': 1,
      'category': '二次関数',
      'question': 'テスト問題文',
      'options': ['選択肢A', '選択肢B', '選択肢C', '選択肢D'],
      'answerIndex': 0,
      'level': 'normal',
      'explanation': 'テスト解説',
    };
    final result = Question.fromMap(testData);
    expect(result.id, 1);
    expect(result.category, '二次関数');
    expect(result.question, 'テスト問題文');
  });
}
