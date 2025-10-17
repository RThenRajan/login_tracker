import 'package:flutter/cupertino.dart';
import 'app_color.dart';

class ThemeColors {
  var container = const Color(0x00000000);
  var backgroundColor = const Color(0x00000000);
  var signInBG = const Color(0x00000000);
  var mainHeadingColor = const Color(0x00000000);
  var textFieldColor = const Color(0x00000000);
  var textFieldBorderColor = const Color(0x00000000);
  var subHeadingColor = const Color(0x00000000);
  var dialogBoxColor = const Color(0x00000000);
  var boxShadow = const Color(0x00000000);
  var container1 = const Color(0x00000000);
  var cardColors = const Color(0x00000000);
  var heading = const Color(0x00000000);
  var boxColor = const Color(0x00000000);
  var paymentColor = const Color(0x00000000);
  var dialogColor = const Color(0x00000000);
  var bookingColor = const Color(0x00000000);
  var languageCardColor = const Color(0x00000000);
  var bookingCardColor = const Color(0x00000000);
  var textButtonColors = const Color(0x00000000);
  var circleProgressIndicatorColor = const Color(0x00000000);
  var newBoxColour = const Color(0x00000000);

  ThemeColors(bool isDarkMode) {
    if (isDarkMode) {
      setDarkThemeColor();
    } else {
      setLightThemeColor();
    }
  }

  void setDarkThemeColor() {
    backgroundColor = const Color(0xff212121);
    signInBG = const Color(0xff212121);
    mainHeadingColor = const Color(0xffffffff);
    textFieldColor = const Color(0xfffff8f5);
    textFieldBorderColor = const Color(0xff595856);
    subHeadingColor = const Color(0xffBFBFBF);
    dialogBoxColor = const Color(0xff3A3B3C);
    dialogColor = const Color(0xff3A3B3C);
    boxColor = const Color(0xff181a20);
    paymentColor = const Color(0xffBFBFBF);
    bookingColor = const Color(0xff3A3B3C);
    bookingCardColor = const Color(0xff595856);

    heading = const Color(0xffffffff);
    container1 = const Color(0xff1f1f1f);
    cardColors = const Color(0xff2e3140);
    container = const Color(0xff1f1f1f);
    boxShadow = const Color(0xffffffff);
    languageCardColor = const Color(0xfff5ecec);
    textButtonColors = themeColor;
    circleProgressIndicatorColor = themeColor;
    newBoxColour = const  Color(0xff2e3140);
  }

  void setLightThemeColor() {
    backgroundColor = const Color(0xffF8F7F9);
    signInBG = const Color(0xffffffff);
    mainHeadingColor = const Color(0xff000000);
    textFieldColor = const Color(0xfffff8f5);
    textFieldBorderColor = const Color(0xffe7e5de);
    subHeadingColor = const Color(0xffacacac);
    dialogBoxColor = const Color(0xffffffff);
    cardColors = const Color(0xffffffff);
    dialogColor = const Color(0xffBFBFBF);
    boxColor = const Color(0xffffffff);
    paymentColor = const Color(0xff3A3B3C);
    bookingColor = const Color(0xffF5F5F5);
    bookingCardColor = const Color(0xffEDEDED);

    heading = const Color(0xff2F3D5B);
    container1 = const Color(0xffFDF5E8);
    container = const Color(0xffFFFFFF);
    boxShadow = const Color(0xff808080);
    languageCardColor = const Color(0xcbe0dada);
    textButtonColors = themeColor;
    circleProgressIndicatorColor = themeColor;
    newBoxColour = const Color(0XffF4F4F4);
  }
}
