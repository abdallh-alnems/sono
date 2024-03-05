import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/color.dart';
import 'package:sono/core/constant/image_asset.dart';

import '../filter.dart';
import '../text_form_field.dart';

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
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        color: AppColor.primaryColor,
                        size: 21.sp,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                        color: AppColor.primaryColor,
                        size: 21.sp,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: AppColor.primaryColor,
                        size: 21.sp,
                      )),
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
