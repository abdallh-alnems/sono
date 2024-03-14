import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/routes/route.dart';
import '../../../widget/arrow_back.dart';
import '../../../widget/home_page/custom_appbar_home/close_icon_page.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('17'.tr),
        centerTitle: true,
        leading: CloseIconPage(),
      ),
    );
  }
}
