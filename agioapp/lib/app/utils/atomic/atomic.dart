import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Atomic {
  static Color? _nightBlack = Color(0xFF171821);
  static Color? red = Color(0xFFee786b);

  static ThemeData buildTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: _nightBlack,
      ),
      scaffoldBackgroundColor: _nightBlack,
      primaryColor: _nightBlack, //FF2c2d33
      primarySwatch: Colors.blue,
      textTheme: TextTheme(),
    );
  }
}
