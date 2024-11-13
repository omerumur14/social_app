import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Notification'));
  }
}
