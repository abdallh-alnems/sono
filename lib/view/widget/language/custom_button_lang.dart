import 'package:flutter/material.dart';

import '../../../core/constant/theme/color.dart';
import '../../../core/responsive/screen_size.dart';

class CustomButtonLang extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonLang({Key? key, required this.textButton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return Container(
      padding:  EdgeInsets.symmetric(horizontal: ScreenSize.blockSizeHorizontal * 27,vertical: ScreenSize.blockSizeVertical * 2 ),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(textButton,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
