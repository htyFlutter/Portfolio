import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_textdata.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chat),
        title: Text("AIとチャットができます", style: AppTextdata.titleFonts,),
      ),
      body: Center(
        child: Text("Chat"),
      ),
    );
  }
}