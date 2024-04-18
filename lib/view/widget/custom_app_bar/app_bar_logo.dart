import 'package:flutter/material.dart';

import '../../../core/responsive/screen_size.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
          double horizontal = ScreenSize.blockSizeHorizontal;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: horizontal * 4),
      child: Text('Sono'),
    );
  }
}
