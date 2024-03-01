import 'package:flutter/material.dart';

class AnimatedBottomNavBar extends StatelessWidget {
  final double? height;
  final double width;
  final double? circular ;
  final Color? color;
 final Widget? child;

  const AnimatedBottomNavBar(
      {super.key, this.height, required this.width, this.color, this.circular = 0, this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      duration: Duration(seconds: 1),
      curve: Curves.fastLinearToSlowEaseIn,
    height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(circular!),
      ),
      child: child ,
    );
  }
}
