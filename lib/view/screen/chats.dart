import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sono/view/widget/custom_appbar/filter.dart';
import 'package:sono/view/widget/text_form_field.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * .04, vertical: screenHeight * .021),
      child: Row(
        children: [
          MyTextFormField(
            hintText: "16".tr,
          ),
          SizedBox(
            width: screenWidth * .05,
          ),
          Filter(),
        ],
      ),
    ));
  }
}
