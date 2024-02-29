import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view/screen/account.dart';
import '../../view/screen/advertisements.dart';
import '../../view/screen/chats.dart';
import '../../view/screen/home_page.dart';

abstract class BottomNavBarController extends GetxController {
  changePage(int currentPages);
}

class BottomNavControllerImp extends BottomNavBarController {
  int currentPage = 0;

  List<Widget> listPage = [
    HomePage(),
    Chats(),
    Advertisements(),
    Account(),
  ];


  @override
  changePage(currentPages) {
    currentPage = currentPages;
    update();
  }
}
