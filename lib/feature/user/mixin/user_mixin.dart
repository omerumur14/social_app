import 'package:flutter/material.dart';
import 'package:social_app/feature/user/view/user_view.dart';

mixin UserMixin on State<UserView> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
