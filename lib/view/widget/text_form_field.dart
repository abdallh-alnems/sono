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
    double vertical = ScreenSize.blockSizeVertical;

    return Expanded(
      child: TextFormField(
        cursorColor: GeneralAppColor.primaryColor,

        // controller: mycontroller,
        // onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: MyIconButton(
            icon: Icons.search,
            onPressed: () {},
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(40)),
          filled: true,
          fillColor: GeneralAppColor.backGroundIcon,
          contentPadding: EdgeInsets.symmetric(vertical: vertical * .19),
        ),
      ),
    );
  }
}
