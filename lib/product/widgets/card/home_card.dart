import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeCard extends StatefulWidget {
  const CustomHomeCard({
    super.key,
    required this.profileImage,
    required this.postImage,
    required this.name,
    required this.userName,
    required this.comment,
    required this.like,
  });
  final String profileImage;
  final String postImage;
  final String name;
  final String userName;
  final String comment;
  final String like;

  @override
  State<CustomHomeCard> createState() => _CustomHomeCardState();
}

class _CustomHomeCardState extends State<CustomHomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 338,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 238, 250),
          borderRadius: BorderRadius.circular(40.0)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 44,
                    height: 44,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        widget.profileImage,
                        width: 36,
                        height: 36,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.41,
                              color: Colors.black),
                        ),
                        Text(
                          widget.userName,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.41,
                            color: const Color.fromARGB(255, 108, 122, 156),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 268,
                    child: Image.asset(
                      widget.postImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                        child: Container(
                          height: 47,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(0, 0, 0, 30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 22,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icon/chat.svg'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        widget.comment,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -0.41,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: SvgPicture.asset(
                                          'assets/icon/like.svg'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        widget.like,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -0.41,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icon/send.svg',
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: SvgPicture.asset(
                                        'assets/icon/subtract.svg',
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
