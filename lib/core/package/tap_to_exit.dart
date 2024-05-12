import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sono/uzzzzzz/size_extension.dart';
import 'package:get/get.dart';
import '../responsive/screen_size.dart';

class TapToExit extends StatelessWidget {
  const TapToExit({
    super.key,
    required this.child,
    this.snackBar,
  });

  final Widget child;
  final SnackBar? snackBar;

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        DateTime now = DateTime.now();
        if (currentBackPressTime == null ||
            now.difference(currentBackPressTime!) >
                const Duration(seconds: 2)) {
          currentBackPressTime = now;
          if (snackBar != null) {
            ScaffoldMessenger.of(context).showSnackBar(snackBar!);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'tap'.tr,
                  style: TextStyle(fontSize: 13.sp),
                ),
                behavior: SnackBarBehavior.floating,
                elevation: 0,
                margin: EdgeInsets.symmetric(
                    vertical: ScreenSize.blockSizeVertical * 11,
                    horizontal: ScreenSize.blockSizeHorizontal * 15),
              ),
            );
          }
        } else {
          SystemNavigator.pop();
        }
      },
      child: child,
    );
  }
}
