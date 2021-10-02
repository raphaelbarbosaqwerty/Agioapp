import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Atomic {
  static Color? _nightBlack = Color(0xFF171821);
  static Color? fever = Color(0xFFee786b);
  static Color? profit = Color(0xFF1fc0a9);

  static ThemeData buildTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: _nightBlack,
      ),
      scaffoldBackgroundColor: _nightBlack,
      primaryColor: _nightBlack, //FF2c2d33
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
      ),
      errorColor: fever,
      highlightColor: profit
    );
  }
}
