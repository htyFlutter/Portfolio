import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:portfolio/services/gemini_service.dart';

class ChatWidgets extends StatefulWidget {
  const ChatWidgets({super.key});

  @override
  State<ChatWidgets> createState() => _ChatWidgetsState();
}

class _ChatWidgetsState extends State<ChatWidgets> {
  final _chatController = InMemoryChatController();
  final _gemini = GeminiService();

  @override
  void dispose() {
    _chatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chat(
      chatController: _chatController,
      currentUserId: 'User',
      onMessageSend: (text) async {
        final messageContent = {
          'id': '${DateTime.now().microsecondsSinceEpoch}',
          'authorId': 'User',
          'createdAt': Timestamp.now(),
          'text': text,
        };
        await _chatController.insertMessage(
          TextMessage(
            id: '${DateTime.now().microsecondsSinceEpoch}',
            authorId: 'User',
            text: text,
          ),
        );
        await FirebaseFirestore.instance
            .collection('messages')
            .add(messageContent);
        try {
          final reply = await _gemini.ask(text);
          _chatController.insertMessage(
            TextMessage(
              id: '${DateTime.now().microsecondsSinceEpoch}',
              authorId: 'ai',
              text: reply,
            ),
          );
        } catch (e) {
          _chatController.insertMessage(
            TextMessage(
              id: '${DateTime.now().microsecondsSinceEpoch}',
              authorId: 'ai',
              text: 'エラー発生！ 原因: $e',
              createdAt: DateTime.now(),
            ),
          );
        }
      },
      resolveUser: (UserID id) async {
        if (id == 'ai') {
          return User(id: id, name: 'せんせい');
        }
        return User(id: id, name: 'You');
      },
    );
  }
}
