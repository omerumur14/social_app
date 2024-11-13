import 'package:flutter/material.dart';

class ChatFrontView extends StatefulWidget {
  const ChatFrontView({super.key});

  @override
  State<ChatFrontView> createState() => _ChatFrontViewState();
}

class _ChatFrontViewState extends State<ChatFrontView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Chat Sayfası'),
    );
  }
}
