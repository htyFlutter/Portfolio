import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
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
    if (currentIndex < totalQuestions - 1) {
      setState(() {
        score++;
        currentIndex++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => QuizResultScreen()),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _questionFuture = QuizService().loadJsonData();
  }

  void onQuizFinished() async {
    final result = QuizResult();
    await IsarService.instance.saveQuestionsResults(result);

    if (!mounted) return;

    Navigator.push(context, MaterialPageRoute(builder: (context) => QuizResultScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Question>>(
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
                        const SizedBox(height: 150),
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
                      ],
                    ),
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
      ),
    );
  }
}
