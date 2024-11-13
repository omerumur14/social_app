import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/product/widgets/buttons/elevated_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
