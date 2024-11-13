import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryGrid extends StatelessWidget {
  const GalleryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/image/user_bg.png',
      'assets/image/post.png',
      'assets/image/post1.png',
      'assets/image/post.png',
      'assets/image/post.png',
      'assets/image/post1.png',
      'assets/image/user_bg.png',
      'assets/image/user_bg.png',
      'assets/image/post.png',
      'assets/image/post1.png',
      'assets/image/post.png',
      'assets/image/post.png',
      'assets/image/post1.png',
      'assets/image/user_bg.png',
      'assets/image/user_bg.png',
      'assets/image/post.png',
      'assets/image/post1.png',
      'assets/image/post.png',
      'assets/image/post.png',
      'assets/image/post1.png',
      'assets/image/user_bg.png',
    ];

    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(images.length, (index) {
            int crossAxisCellCount = (index % 6 == 0) ? 2 : 1;
            int mainAxisCellCount = (index % 6 == 0) ? 2 : 1;

            return StaggeredGridTile.count(
              crossAxisCellCount: crossAxisCellCount,
              mainAxisCellCount: mainAxisCellCount,
              child: _buildImage(images[index], index),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath, int index) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: index == 0 ? const Radius.circular(50) : Radius.zero,
        topRight: index == 1 ? const Radius.circular(50) : Radius.zero,
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
