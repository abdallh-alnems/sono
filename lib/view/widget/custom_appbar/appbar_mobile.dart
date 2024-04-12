import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/responsive/screen_size.dart';
import 'filter.dart';
import '../text_form_field.dart';
import 'page_appbar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double horizontal = ScreenSize.blockSizeHorizontal;
    double width = ScreenSize.screenWidth;

    return Column(
      children: [
       PageAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontal * 4,
          ),
          child: Row(
            children: [
              MyTextFormField(
                hintText: "scHome".tr,
              ),
              SizedBox(
                width: width * .05,
              ),
              Filter(),
            ],
          ),
        )
      ],
    );
  }
}
