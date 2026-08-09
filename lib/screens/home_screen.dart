import 'package:flutter/material.dart';
import 'package:portfolio/components/home_widgets.dart';
import 'package:portfolio/screens/quiz_screen/quiz_result.dart';
import 'package:portfolio/screens/timer_screen.dart';
import 'package:portfolio/services/isar_service.dart';
import 'package:portfolio/theme/app_textdata.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<QuizResult>>(
      future: IsarService.instance.getAllQuestionResults(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        final totalResult = snapshot.data ?? [];
        double totalTime = 0.0;
        double totalRate = 0.0;
        double averageRate = 0.0;

        for (var item in totalResult) {
          totalTime += item.totalStudyTime;
          totalRate += item.score;
        }

        averageRate = totalRate / totalResult.length;
        if (totalResult.isEmpty) {
          Text("エラー発生！0で割ることはできません。");
        } else {
          averageRate = totalRate / totalResult.length;
        }
        return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.home),
            title: Text("ホーム", style: AppTextdata.titleFonts),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          HomeWidgets(
                            title: "学習時間",
                            icon: Icons.lock_clock,
                            value: "$totalTime時間",
                          ),
                          //ここに設置したいけどエラー出る
                        ],
                      ),

                      const SizedBox(width: 45),
                      Column(
                        children: [
                          HomeWidgets(
                            title: "正答率",
                            icon: Icons.check,
                            value: "${averageRate.toStringAsFixed(1)}%",
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 200),
                  Container(
                    height: 60,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TimerScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "15分タイマー",
                        style: AppTextdata.titleFonts.copyWith(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.onTertiary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
