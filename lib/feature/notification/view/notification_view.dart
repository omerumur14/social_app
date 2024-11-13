import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social_app/feature/notification/view/notification_front_view.dart';

@RoutePage()
class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotificationFrontView(),
    );
  }
}
