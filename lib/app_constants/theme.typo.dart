import 'package:flutter/material.dart';

class AppTypography {
  static TextStyle bodyS(Color color) {
    return TextStyle(
        fontFamily: "Instrument Sans",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 12,
        height: 1.5,
        color: color);
  }

  static TextStyle bodyM(Color color) {
    return TextStyle(
      fontFamily: "Instrument Sans",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 16,
        height: 1.5,
        color: color);
  }

  static TextStyle headingS(Color color) {
    return TextStyle(
      fontFamily: "Instrument Sans",
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontSize: 16,
        height: 1.5,
        color: color);
  }

  static TextStyle headingM(Color color) {
    return TextStyle(
      fontFamily: "Instrument Sans",
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontSize: 32,
        height: 1.5,
        color: color);
  }
}
