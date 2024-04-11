import 'package:flutter/material.dart';

class BaseWidget {
  static late BuildContext _context;

  static void init(BuildContext context) {
    _context = context;
  }

  static bool isMobile() => MediaQuery.of(_context).size.width < 500;

  static bool isTablet() =>
      MediaQuery.of(_context).size.width <= 1100 &&
      MediaQuery.of(_context).size.width >= 500;

  static bool isWeb() => MediaQuery.of(_context).size.width > 1100;
}
