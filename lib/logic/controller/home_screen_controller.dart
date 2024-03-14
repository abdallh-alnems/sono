import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view/screen/account.dart';
import '../../view/screen/advertisements.dart';
import '../../view/screen/chats.dart';
import '../../view/screen/home_page/home_page.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentPages);
}

class HomeScreenControllerImp extends HomeScreenController {
  
  int currentPage = 0;

  List<Widget> listPage = [
    HomePage(),
    Chats(),
    Advertisements(),
    Account(),
  ];

  List<String> listOfStrings = [
    '11'.tr,
    '12'.tr,
    '13'.tr,
    '14'.tr,
  ];

  List<IconData> listOfIcons = [
    Icons.home,
    Icons.chat,
    Icons.list,
    Icons.person_rounded,
  ];

  @override
  changePage(currentPages) {
    currentPage = currentPages;
    update();
  }
}
