import 'package:flutter/material.dart';
import 'package:portfolio/components/unit_container.dart';
import 'package:portfolio/screens/quiz_screen/starts_screen.dart';
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
        title: Text("メニュー一覧", style: AppTextdata.titleFonts),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(height: 50),
                UnitContainer(
                  titleIcon: Icon(Icons.calculate, color: Colors.black),
                  title: Text(
                    "けいさん",
                    style: AppTextdata.titleFonts.copyWith(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  iconButton: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StartsScreen()));
                    },
                    icon: Icon(Icons.arrow_right_alt, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 20),
                UnitContainer(
                  titleIcon: Icon(Icons.show_chart, color: Colors.black), 
                  title: Text(
                    "かんすう",
                    style: AppTextdata.titleFonts.copyWith(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ), 
                  iconButton: 
                  IconButton(
                    onPressed: null, 
                    icon: Icon(Icons.lock)
                  )
                ), 
                const SizedBox(height: 20),
                UnitContainer(
                  titleIcon: Icon(Icons.flutter_dash, color: Colors.black,), 
                  title: Text(
                    "すうれつ",
                    style: AppTextdata.titleFonts.copyWith(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ), 
                  iconButton: IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.lock)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
