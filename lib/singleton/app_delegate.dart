import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final navKey = GlobalKey<NavigatorState>();

class AppDelegate {
  static final AppDelegate _appDelegate = AppDelegate._internal();
  bool isDarkMode = false;

  factory AppDelegate() {
    return _appDelegate;
  }

  AppDelegate._internal();
}
