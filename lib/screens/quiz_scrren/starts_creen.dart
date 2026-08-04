import 'package:flutter/material.dart';

class StartsCreen extends StatefulWidget {
  const StartsCreen({super.key});

  @override
  State<StartsCreen> createState() => _StartsCreenState();
}

class _StartsCreenState extends State<StartsCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("クイズを始めます。"),
      ),
      body: Center(child: Text("クイズを始めます。\n 4択式になっていますので、どれか一つを推していください。")),
    );
  }
}