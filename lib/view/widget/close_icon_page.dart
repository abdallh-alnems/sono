import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sono/uzzzzzz/size_extension.dart';
import 'package:get/get.dart';
import '../../core/constant/theme/color/general_color.dart';

class CloseIconPage extends StatelessWidget {
  const CloseIconPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * .03),
      child: IconButton(
        icon: Icon(
          Icons.close,
          color: GeneralAppColor.primaryColor,
          size: 23.sp,
        ),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
