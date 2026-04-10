import 'package:flutter/widgets.dart';

class ScreenResulation {
  static late MediaQueryData _fullsize;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockWidth;
  static late double blockHeight;

  static void scrnres(BuildContext context) {
    _fullsize = MediaQuery.of(context);
    screenWidth = _fullsize.size.width;
    screenHeight = _fullsize.size.height;

    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;
  }
}
