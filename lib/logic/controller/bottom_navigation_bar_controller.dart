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

  List<BottomNavigationBarItem> bottomNavBar = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
    BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
  ];

  @override
  changePage(currentPages) {
    currentPage = currentPages;
    update();
  }
}
