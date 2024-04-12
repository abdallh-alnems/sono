import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyIconButton extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  const MyIconButton({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 21.sp,
        ));
  }
}
