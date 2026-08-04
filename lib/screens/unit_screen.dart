import 'package:flutter/material.dart';
import 'package:portfolio/components/unit_container.dart';
import 'package:portfolio/screens/quiz_scrren/quiz_screen.dart';
import 'package:portfolio/theme/app_textdata.dart';

class UnitScreen extends StatefulWidget {
  const UnitScreen({super.key});

  @override
  State<UnitScreen> createState() => _UnitScreenState();
}

class _UnitScreenState extends State<UnitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.alarm),
        title: Text("たんげん一覧", style: AppTextdata.titleFonts),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                UnitContainer(
                  titleIcon: Icon(Icons.calculate,color: Colors.black,), 
                  title: Text("けいさん"), 
                  iconButton: IconButton(
                    onPressed: (){
                      QuizScreen();
                    },
                    icon: Icon(Icons.arrow_right_alt, color: Colors.black,)
                  ),
                )
              ],
            ),
          )
        )
      ),
    );
  }
}