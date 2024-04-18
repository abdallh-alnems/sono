import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/routes/route.dart';
import '../../../core/responsive/screen_size.dart';
import '../my_icon_button.dart';
import 'app_bar_logo.dart';

class PageAppBar extends StatelessWidget {
  const PageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
      double horizontal = ScreenSize.blockSizeHorizontal;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal * 5),
      child: Row(
        children: [
          MyIconButton(
            onPressed: () {
              Get.toNamed(AppRoute.favorites);
            },
            icon: Icons.favorite_outline,
          ),
          MyIconButton(
            onPressed: () {
              Get.toNamed(AppRoute.notifications);
            },
            icon: Icons.notifications_none,
          ),
          MyIconButton(
            onPressed: () {
              Get.toNamed(AppRoute.add);
            },
            icon: Icons.add,
          ),
        ],
      ),
    );
  }
}
