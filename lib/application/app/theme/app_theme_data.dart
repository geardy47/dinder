import 'package:flutter/material.dart';

import '../constants/common.dart';
import '../constants/custom_color.dart';

ThemeData appThemeData(BuildContext context) {
  return ThemeData(
    fontFamily: Common.defaultFontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: CustomColor.primaryColor,
      elevation: 0,
    ),
    scaffoldBackgroundColor: CustomColor.textColor,
  );
}
