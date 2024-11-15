import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social_app/feature/profile/view/profile_front_view.dart';

@RoutePage()
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileFrontView(),
    );
  }
}
