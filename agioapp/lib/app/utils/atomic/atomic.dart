import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Atomic {
  static Color _nightBlack = Color(0xFF171821);
  static Color purple = Color(0xFF5568fe);
  static Color _red = Color(0xFFee786b);

  static Color _subtitle = Color(0xFF6b6f77);
  static Color formField = Color(0xFF252a34);

  static ThemeData buildTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: _nightBlack,
      ),
      scaffoldBackgroundColor: _nightBlack,
      primaryColor: _nightBlack, //FF2c2d33
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: purple,
            secondary: purple,
          ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
      primarySwatch: Colors.blue,
      iconTheme: IconThemeData(
        color: _subtitle,
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: formField,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 24.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: purple,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintStyle: TextStyle(
          color: _subtitle,
        ),
      ),
      textTheme: TextTheme(
        bodyText1: GoogleFonts.roboto(
          textStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        bodyText2: GoogleFonts.roboto(
          textStyle: TextStyle(
            color: _subtitle,
          ),
        ),
      ),
    );
  }
}
