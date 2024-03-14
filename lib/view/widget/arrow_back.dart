import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../core/constant/color.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * .05),
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColor.primaryColor,
          size: 21.sp,
        ),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
