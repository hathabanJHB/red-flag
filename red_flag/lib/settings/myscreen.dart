// import 'package:flutter/material.dart';

import 'dart:developer';

class MyScreen {
  static double screenHeight = 0;
  static double screenWidth = 0;

  static setHeght(double num) {
    log("$screenHeight");
    return screenHeight * (num / 100);
  }

  static setWidth(double num) {
    return screenWidth * (num / 100);
  }
}