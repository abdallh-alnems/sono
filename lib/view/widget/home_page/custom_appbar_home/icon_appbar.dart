import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/theme/color/general_color.dart';

class IconAppBar extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  const IconAppBar({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: GeneralAppColor.primaryColor,
          size: 21.sp,
        ));
  }
}
