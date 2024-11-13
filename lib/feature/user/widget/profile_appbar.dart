import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/product/widgets/buttons/elevated_button.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: CustomElevatedButton(
          onPressed: () {
            context.router.popForced();
          },
          customWidget: SvgPicture.asset(
            'assets/icon/arrow_left.svg',
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: CustomElevatedButton(
            onPressed: () {},
            customWidget: SvgPicture.asset(
              'assets/icon/message.svg',
            ),
          ),
        ),
      ],
      backgroundColor: Colors.transparent,
    );
  }
}
