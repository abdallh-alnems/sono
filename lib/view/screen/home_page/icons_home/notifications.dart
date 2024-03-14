import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widget/home_page/custom_appbar_home/close_icon_page.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('18'.tr),
        centerTitle: true,
        leading: CloseIconPage(),
      ),
    );
  }
}