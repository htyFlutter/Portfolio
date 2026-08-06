import 'dart:convert';
import 'package:flutter/services.dart';


import 'package:portfolio/models/question.dart';


class QuizService {
  Future<List<Question>> loadJsonData() async {
    final String jsonString = await rootBundle.loadString(
      'assets/question.json',
    );

    List data = jsonDecode(jsonString);
    return data.map((json) => Question.fromMap(json)).toList();
  }
}


