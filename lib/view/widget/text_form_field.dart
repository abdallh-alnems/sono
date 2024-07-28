import 'package:flutter/material.dart';
import '../../core/constant/theme/color/general_color.dart';
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
          // cursorWidth: 10,
          //  autofocus: false,
          // controller: mycontroller,
          // onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: MyIconButton(
              icon: Icons.search,
              onPressed: () {},
            ),
            // suffixIcon: MyIconButton(
            //   icon: Icons.close,
            //   onPressed: () {},
            // ),
          ),
        ),
      ),
    );
  }
}
