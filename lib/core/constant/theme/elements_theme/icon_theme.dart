import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/general_color.dart';

class IIconTheme {
  static IconThemeData lightIconTheme() =>
      IconThemeData(color: GeneralAppColor.primaryColor);

  static IconThemeData darkIconTheme() =>
      IconThemeData(color: GeneralAppColor.primaryColor);
}
