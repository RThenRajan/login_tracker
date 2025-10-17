import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_tracker/helper/style.dart';
import 'package:login_tracker/helper/theme_notifier.dart';

class Style {

  static TextStyle headingStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: MAIN_HEADING_SIZE_18,
    color: ThemeNotifier().colors().mainHeadingColor,
  );

  static TextStyle headingStyle1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: SUB_HEADING_SIZE_16,
    color: ThemeNotifier().colors().mainHeadingColor
  );

  static TextStyle headingStyle2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: SUB_HEADING_SIZE_14,
    color: ThemeNotifier().colors().mainHeadingColor
  );

  static TextStyle subHeadingStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: SUB_HEADING_SIZE_16,
    color: ThemeNotifier().colors().subHeadingColor
  );

  static TextStyle subHeadingStyle1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: SUB_HEADING_SIZE_14,
    color: ThemeNotifier().colors().subHeadingColor
  );

  static TextStyle subHeadingStyle2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: MAX_TEXT_SIZE_12,
    color: ThemeNotifier().colors().subHeadingColor
  );

}