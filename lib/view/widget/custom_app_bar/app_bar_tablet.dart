import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/responsive/screen_size.dart';
import '../text_form_field.dart';
import 'app_bar_logo.dart';
import 'app_bar_page.dart';
import 'app_bar_show_menu.dart';
import 'filter.dart';

class AppBarTablet extends StatelessWidget {
  const AppBarTablet({super.key});

  @override
  Widget build(BuildContext context) {
    double horizontal = ScreenSize.blockSizeHorizontal;
        double vertical = ScreenSize.blockSizeVertical;

    double width = ScreenSize.screenWidth;

    return Padding(
      padding:  EdgeInsets.symmetric(vertical: vertical * 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           
          Row(
            children: [
             
                          AppBarLogo(),
          
              MyTextFormField(
                hintText: "scHome".tr,
              ),
               SizedBox(
                      width: width * .03,
                    ),
                            Filter(),
          
            ],
          ),
          Center(child: MyPopupMenuButton()),
        ],
      ),
    );
  }
}
