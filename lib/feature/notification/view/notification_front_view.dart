import 'package:flutter/material.dart';

class NotificationFrontView extends StatefulWidget {
  const NotificationFrontView({super.key});

  @override
  State<NotificationFrontView> createState() => _NotificationFrontViewState();
}

class _NotificationFrontViewState extends State<NotificationFrontView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Notification Page'),
    );
  }
}
