import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/color.dart';
import 'package:sono/core/constant/image_asset.dart';
import 'package:sono/core/constant/routes/route.dart';
import 'package:sono/view/widget/home_page/custom_appbar_home/icon_appbar.dart';

import '../../../screen/home_page/icons_home/favorite.dart';
import '../filter.dart';
import '../../text_form_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconAppBar(
                    onPressed: () {
                     Get.toNamed(AppRoute.favorites);
                     
                    },
                    icon: Icons.favorite_outline,
                  ),
                  IconAppBar(
                    onPressed: () {
                      Get.toNamed(AppRoute.notifications);
                    },
                    icon: Icons.notifications_none,
                  ),
                  IconAppBar(
                    onPressed: () {
                      Get.toNamed(AppRoute.add);
                    },
                    icon: Icons.add,
                  ),
                ],
              ),
              Text('Sono')
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * .04,
          ),
          child: Row(
            children: [
              MyTextFormField(
                hintText: "10".tr,
              ),
              SizedBox(
                width: screenWidth * .05,
              ),
              Filter(),
            ],
          ),
        )
      ],
    );
  }
}
