import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/product/widgets/appbar/bottom_appbar.dart';
import 'package:social_app/product/widgets/buttons/elevated_button.dart';
import 'package:social_app/product/widgets/buttons/story_button.dart';
import 'package:social_app/product/widgets/card/home_card.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Map<String, String>> _stories = [
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

  final List<Map<String, String>> _posts = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            width: 44,
            height: 44,
            child: CustomElevatedButton(
              onPressed: () {},
              customWidget: SvgPicture.asset(
                'assets/icon/camera.svg',
              ),
            ),
          ),
        ),
        title: Text(
          'Explore',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.41,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SizedBox(
              width: 44,
              height: 44,
              child: CustomElevatedButton(
                onPressed: () {},
                customWidget: SvgPicture.asset(
                  'assets/icon/combo_shape.svg',
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        child: SvgPicture.asset('assets/icon/vector.svg'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 20),
                child: Row(
                  children: _stories.map((story) {
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
                itemCount: _posts.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final post = _posts[index];
                  return Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: CustomHomeCard(
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
      ),
    );
  }
}
