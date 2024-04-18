import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/routes/route.dart';
import '../../../../widget/home_page/add_ads/add_appbar.dart';
import '../../../../widget/home_page/add_ads/add_card.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddAppBar(
        title: Text("fw"),
        showLeadingIcon: false,
      ),
      body: MaterialButton(
        onPressed: () {
          Get.toNamed(AppRoute.test);
        },
        child: Text("fdffdfdfdfdfd"),
      ),
    );
  }
}
