import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  const MyTextFormField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Expanded(
      child: TextFormField(
        // controller: mycontroller,
        // onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * .01),
            child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: AppColor.primaryColor,
                  size: 21.sp,
                ),
                onPressed: () {}),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(40)),
          filled: true,
          fillColor: AppColor.backGroundIcon,
          contentPadding: EdgeInsets.symmetric(vertical: screenHeight * .017),
        ),
      ),
    );
  }
}
