import 'package:flutter/material.dart';
import 'package:social_app/feature/home/view/home_front_view.dart';

mixin HomeMixin on State<HomeFrontView> {
  final List<Map<String, String>> stories = [
    {"image": "assets/image/profile.png", "name": "You"},
    {"image": "assets/image/profile1.png", "name": "Benjamin"},
    {"image": "assets/image/profile2.png", "name": "Farita"},
    {"image": "assets/image/profile3.png", "name": "Marie"},
    {"image": "assets/image/profile1.png", "name": "Claire"},
    {"image": "assets/image/profile3.png", "name": "Benjamin"},
    {"image": "assets/image/profile2.png", "name": "Farita"},
    {"image": "assets/image/profile3.png", "name": "Marie"},
    {"image": "assets/image/profile1.png", "name": "Claire"},
    {"image": "assets/image/profile3.png", "name": "Benjamin"},
    {"image": "assets/image/profile2.png", "name": "Farita"},
    {"image": "assets/image/profile3.png", "name": "Marie"},
    {"image": "assets/image/profile1.png", "name": "Claire"},
  ];

  final List<Map<String, String>> posts = [
    {
      "profileImage": "assets/image/profile.png",
      "postImage": "assets/image/post.png",
      "name": "Claire Dangais",
      "userName": "@ClaireD15",
      "comment": "10",
      "like": "122"
    },
    {
      "profileImage": "assets/image/profile3.png",
      "postImage": "assets/image/post1.png",
      "name": "Farita Smith",
      "userName": "@SmithFa",
      "comment": "58",
      "like": "892"
    },
  ];
}
