import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/responsive/screen_size.dart';
import 'app_bar_logo.dart';
import 'app_bar_theme.dart';
import 'filter.dart';
import '../text_form_field.dart';
import 'app_bar_page.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double horizontal = ScreenSize.blockSizeHorizontal;
    double width = ScreenSize.screenWidth;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PageAppBar(),
            AppBarLogo(),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontal * 5,
          ),
          child: Row(
            children: [
              MyTextFormField(
                hintText: "scHome".tr,
              ),
              SizedBox(
                width: width * .07,
              ),
              Filter(),
              // AppBarThemes(),
            ],
          ),
        )
      ],
    );
  }
}
