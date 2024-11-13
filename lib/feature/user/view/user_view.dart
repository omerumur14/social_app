import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/feature/user/mixin/user_mixin.dart';
import 'package:social_app/feature/user/widget/profile_appbar.dart';
import 'package:social_app/feature/user/widget/profile_avatar.dart';
import 'package:social_app/feature/user/widget/profile_bg_image.dart';
import 'package:social_app/product/widgets/appbar/tap_bar.dart';
import 'package:social_app/product/widgets/buttons/radius_button.dart';

@RoutePage()
class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> with UserMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            const ProfileBgImage(),
            Column(
              children: [
                const ProfileAppBar(),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 230, 238, 250),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '1K',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.41,
                                    color: Colors.black),
                              ),
                              Text(
                                '342',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.41,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Followers',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.41,
                                    color: Colors.black),
                              ),
                              Text(
                                'Following',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.41,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            '@Catherine13',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.41,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              'My name is Catherine. I like dancing in the rain and travelling all around the world.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.41,
                                  color:
                                      const Color.fromARGB(255, 108, 122, 156)),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 120,
                              height: 40,
                              child: CustomRadiusButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                textColor: Colors.white,
                                padding: const EdgeInsets.all(10),
                                radius: BorderRadius.circular(20),
                                bgColor:
                                    const Color.fromARGB(255, 87, 144, 223),
                                text: 'Follow',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: SizedBox(
                                width: 120,
                                height: 40,
                                child: CustomRadiusButton(
                                  onPressed: () {},
                                  textColor: Colors.black,
                                  padding: const EdgeInsets.all(10),
                                  radius: BorderRadius.circular(20),
                                  bgColor: Colors.white,
                                  text: 'Message',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const CustomTabBar(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const ProfileAvatar(),
          ],
        ),
      ),
    );
  }
}
