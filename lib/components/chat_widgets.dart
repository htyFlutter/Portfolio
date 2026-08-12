import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class ChatWidgets extends StatefulWidget {
  const ChatWidgets({super.key});

  @override
  State<ChatWidgets> createState() => _ChatWidgetsState();
}

class _ChatWidgetsState extends State<ChatWidgets> {
  final _chatController = InMemoryChatController();

  @override
  void dispose() {
    _chatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chat(
      backgroundColor: Theme.of(context).colorScheme.primary,
      chatController: _chatController,
      currentUserId: 'User',
      onMessageSend: (text) async {
        final messageContent = {
          'id': '${Random().nextInt(1000) + 1}',
          'authorId': 'user',
          'createdAt': Timestamp.now(),
          'text': text,
        };
        await FirebaseFirestore.instance
            .collection('messages')
            .add(messageContent);
        print("無事送信されました！ text: $text");
      },
      resolveUser: (UserID id) async {
        return User(id: id, name: 'User');
      },
    );
  }
}
