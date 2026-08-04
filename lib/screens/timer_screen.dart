import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_textdata.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("15分タイマー", style: AppTextdata.titleFonts),
      centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: (){}, 
          child: Text("15分タイマースタート!", style: AppTextdata.titleFonts)
        ),
      )
    );
  }
}