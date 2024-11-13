import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/feature/home/view/home_front_view.dart';
import 'package:social_app/product/widgets/appbar/bottom_appbar.dart';
import 'package:social_app/product/widgets/appbar/home_appbar.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: const HomeAppBar(),
      bottomNavigationBar: const CustomBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        child: SvgPicture.asset('assets/icon/vector.svg'),
      ),
      body: const HomeFrontView(),
    );
  }
}
