import 'package:flutter/material.dart';
import 'package:social_app/product/widgets/gird/profile_grid.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTabItem(0, 'All'),
              const SizedBox(width: 20),
              _buildTabItem(1, 'Photos'),
              const SizedBox(width: 20),
              _buildTabItem(2, 'Videos'),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: const GalleryGrid(), // GalleryGrid'i burada kullanıyoruz
        ),
      ],
    );
  }

  Widget _buildTabItem(int index, String text) {
    final bool isSelected = index == selectedIndex;

    return InkWell(
      onTap: () => onTabTapped(index),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          if (isSelected)
            Container(
              width: 20,
              height: 2,
              color: const Color.fromARGB(255, 108, 122, 156),
            ),
        ],
      ),
    );
  }
}
