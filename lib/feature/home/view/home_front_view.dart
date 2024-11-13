import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social_app/feature/home/mixin/home_mixin.dart';
import 'package:social_app/product/navigation/app_router.dart';
import 'package:social_app/product/widgets/buttons/story_button.dart';
import 'package:social_app/product/widgets/card/home_card.dart';

class HomeFrontView extends StatefulWidget {
  const HomeFrontView({super.key});

  @override
  State<HomeFrontView> createState() => _HomeFrontViewState();
}

class _HomeFrontViewState extends State<HomeFrontView> with HomeMixin {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20),
              child: Row(
                children: stories.map((story) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: StoryButton(
                      image: Image.asset(story["image"]!),
                      name: story["name"]!,
                      isYou: story["name"] == "You",
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ListView.builder(
              itemCount: posts.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final post = posts[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CustomHomeCard(
                    onTap: () {
                      context.router.push(const UserRoute());
                    },
                    profileImage: post["profileImage"]!,
                    postImage: post["postImage"]!,
                    name: post["name"]!,
                    userName: post["userName"]!,
                    comment: post["comment"]!,
                    like: post["like"]!,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
