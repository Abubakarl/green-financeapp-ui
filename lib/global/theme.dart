import 'package:flutter/material.dart';

class GlobalTheme {
  static LinearGradient screenGradient = const LinearGradient(
    end: Alignment.bottomCenter,
    begin: Alignment.topCenter,
    colors: [
      Color(0xff071724),
      Colors.black,
    ],
  );
  static Color primaryColor = const Color(0xFFbdf75c);
  static Color backgroundColor = const Color(0xFF1E2C39).withAlpha(220);
  static Color primaryTextColor = const Color(0xFFf7f7f7);
  static Color secondaryTextColor = Colors.grey;
  static Color tertiaryTextColor = Colors.black.withAlpha(145);
  static Color darkTextColor = Colors.black;
}
