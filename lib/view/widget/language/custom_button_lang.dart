import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/responsive/base_widget.dart';
import '../../../core/responsive/screen_size.dart';

class CustomButtonLang extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonLang({Key? key, required this.textButton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double horizontal = ScreenSize.blockSizeHorizontal;
    bool size = BaseWidget.isMobile();
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size ? horizontal * 21 : horizontal * 31,
          vertical: ScreenSize.blockSizeVertical * 2),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child:
            Text(textButton, ),
      ),
    );
  }
}
