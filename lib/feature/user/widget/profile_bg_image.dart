import 'package:flutter/material.dart';

class ProfileBgImage extends StatelessWidget {
  const ProfileBgImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/image/user_bg.png',
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
