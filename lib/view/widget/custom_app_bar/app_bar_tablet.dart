import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/responsive/screen_size.dart';
import '../text_form_field.dart';
import 'app_bar_language.dart';
import 'app_bar_logo.dart';
import 'app_bar_page.dart';
import 'app_bar_menu.dart';
import 'app_bar_theme.dart';
import 'filter.dart';

class AppBarTablet extends StatelessWidget {
  const AppBarTablet({super.key});

  @override
  Widget build(BuildContext context) {
    double horizontal = ScreenSize.blockSizeHorizontal;
    double vertical = ScreenSize.blockSizeVertical;

    double width = ScreenSize.screenWidth;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: vertical * 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppBarThemes(),
              AppBarLanguage(),
              AppBarLogo(),
              AppBarMenu(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontal * 3,
          ),
          child: Row(
            children: [
              MyTextFormField(
                hintText: "scHome".tr,
              ),
              SizedBox(
                width: width * .03,
              ),
              Filter(),
            ],
          ),
        ),
      ],
    );
  }
}
