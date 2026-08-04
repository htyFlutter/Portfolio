import 'package:flutter/material.dart';
import 'package:portfolio/components/home_widgets.dart';
import 'package:portfolio/screens/timer_screen.dart';
import 'package:portfolio/theme/app_textdata.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                  HomeWidgets(title: "学習時間", icon: Icons.lock_clock),
                  const SizedBox(width: 45),
                  HomeWidgets(title: "正答率", icon: Icons.check),
                ],
              ),
              const SizedBox(height: 200),
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimerScreen()),
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
  }
}
