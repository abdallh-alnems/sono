import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/constant/theme/color/general_color.dart';
import '../../core/functions/get_theme_color.dart';
import '../../core/responsive/screen_size.dart';
import 'my_icon_button.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  const MyTextFormField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
      //  height: 43.h,
        child: TextFormField(
          cursorColor: GeneralAppColor.primaryColor,
      //  autofocus: false,
          // controller: mycontroller,
          // onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: MyIconButton(
              icon: Icons.search,
              onPressed: () {},
            ),

                
          ),
        ),
      ),
    );
  }
}
