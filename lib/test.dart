import 'package:flutter/material.dart';

import 'view/widget/home_page/add_ads/add_appbar.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddAppBar(
        title: Text('fh'),
      ),
    );
  }
}