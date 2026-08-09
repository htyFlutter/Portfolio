import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_textdata.dart';

class QuizResultScreen extends StatefulWidget {
  const QuizResultScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
  });

  final int score;
  final int totalQuestions;

  @override
  State<QuizResultScreen> createState() => _QuizResultScreenState();
}

class _QuizResultScreenState extends State<QuizResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.question_answer),
        title: Text("結果発表！！！", style: AppTextdata.titleFonts),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 100),
        child: Column(
          children: [
            const SizedBox(height: 200),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check),
                        const SizedBox(width: 30),
                        Text(
                          "結果",
                          style: AppTextdata.titleFonts.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "正解数: ${widget.score}問",
                      style: AppTextdata.quizFonts.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "正答率: ${(widget.score / widget.totalQuestions * 100).toStringAsFixed(1)}%",
                      style: AppTextdata.quizFonts.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.tertiary,
              ),
              child: Text(
                "たんげんに戻る",
                style: AppTextdata.quizFonts.copyWith(
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
