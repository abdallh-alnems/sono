import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sono/uzzzzzz/size_extension.dart';
import 'package:get/get.dart';
import '../../core/constant/theme/color/general_color.dart';

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
          color: GeneralAppColor.primaryColor,
          size: 21.sp,
        ),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
