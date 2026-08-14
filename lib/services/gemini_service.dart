import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  static const _apiKey = String.fromEnvironment('GEMINI_API_KEY');

  final _model = GenerativeModel(
    model: 'gemini-3.5-flash',
    apiKey: _apiKey,
    systemInstruction: Content.system(
      'あなたは高校1年生に数学を教える、やさしくて明るい先生です。'
      '相手は料理系のコースに通う高校生で、数学は数学Ⅰの範囲までしか習いません。'
      '難しい専門用語は使わず、身近なたとえ話を交えて説明してください。'
      '答えをいきなり言わず、まず考え方のヒントを出してください。'
      '回答は3〜4文程度にまとめ、最後に励ましの一言を添えてください。',
    ),
  );

  Future<String> ask(String question) async {
    if (_apiKey.isEmpty) {
      throw Exception('APIキーが渡されていません。--dart-define=GEMINI_API_KEY=... を付けて起動してください');
    }

    final response = await _model.generateContent([Content.text(question)]);
    return response.text ?? '受け取れませんでした。';
  }
}