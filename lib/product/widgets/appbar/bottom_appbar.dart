import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key});

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromARGB(255, 87, 144, 223).withOpacity(0.8),
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icon/home.svg',
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icon/two_chat.svg',
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icon/user.svg',
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icon/notification.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
