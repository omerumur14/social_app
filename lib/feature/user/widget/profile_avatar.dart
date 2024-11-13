import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 140.0),
      child: SizedBox(
        width: 100,
        height: 100,
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 44,
            backgroundImage: AssetImage('assets/image/profile4.png'),
          ),
        ),
      ),
    );
  }
}
