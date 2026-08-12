import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:portfolio/components/explanation_widget.dart';
import 'package:portfolio/components/option_card.dart';
import 'package:portfolio/models/question.dart';
import 'package:portfolio/screens/quiz_screen/quiz_result.dart';
import 'package:portfolio/screens/quiz_screen/quiz_result_screen.dart';
import 'package:portfolio/services/isar_service.dart';
import 'package:portfolio/services/quiz_service.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late final Future<List<Question>> _questionFuture;
  int currentIndex = 0;
  int score = 0;

  void checkAnswer(int selectIndex, int answerIndex, int totalQuestions) {
    setState(() {
      if (selectIndex == answerIndex) {
        score++;
      }
    });
    if (totalQuestions - (currentIndex + 1) > 0) {
      setState(() {
        currentIndex++;
      });
    } else {
      onQuizFinished(totalQuestions);
    }
  }

  @override
  void initState() {
    super.initState();
    _questionFuture = QuizService().loadJsonData();
  }

  void onQuizFinished(int totalQuestions) async {
    final result = QuizResult();
    result.score = score;
    result.correctAnswerRate = (score / totalQuestions) * 100;
    await IsarService.instance.saveQuestionsResults(result);

    if (!mounted) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            QuizResultScreen(totalQuestions: totalQuestions, score: score),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: FutureBuilder<List<Question>>(
          future: _questionFuture,
          builder:
              (BuildContext context, AsyncSnapshot<List<Question>> snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text("エラー発生！ 原因: ${snapshot.error}"));
                }

                if (snapshot.hasData) {
                  return SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Math.tex(
                            snapshot.data![currentIndex].question,
                            textStyle: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 185),
                          ...List.generate(
                            snapshot.data![currentIndex].options.length,
                            ((index) => OptionCard(
                              onTap: () => checkAnswer(
                                index,
                                snapshot.data![currentIndex].answerIndex,
                                snapshot.data!.length,
                              ),
                              optionText:
                                  snapshot.data![currentIndex].options[index],
                            )),
                          ),
                          const SizedBox(height: 10),
                          ExplanationWidget(explanationText: snapshot.data![currentIndex].explanation),
                        ],
                      ),
                    ),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
        ),
      ),
    );
  }
}
