import 'package:flutter/material.dart';
import 'package:portfolio/screens/quiz_screen/quiz_screen.dart';
import 'package:portfolio/theme/app_textdata.dart';

class StartsScreen extends StatefulWidget {
  const StartsScreen({super.key});

  @override
  State<StartsScreen> createState() => _StartsScreenState();
}

class _StartsScreenState extends State<StartsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Are You Ready?"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 90),
            Text(
              "クイズを始めます。\n 4択式になっていますので、どれか1つを押してください。",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 200),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.secondary
                )
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              child: Text("ココをタップ", style: AppTextdata.titleFonts,),
            ),
          ],
        ),
      ),
    );
  }
}
