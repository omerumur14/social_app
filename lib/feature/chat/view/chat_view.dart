import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/product/widgets/appbar/bottom_appbar.dart';
import 'package:social_app/product/widgets/buttons/elevated_button.dart';

@RoutePage()
class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
    );
  }
}
