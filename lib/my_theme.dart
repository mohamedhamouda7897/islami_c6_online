import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color OnprimaryColor = Color(0xFF79643D);
  static Color primaryColorDark = Color(0xFF12182A);
  static Color BlackColor = Color(0xFF242424);

  static Color WhiteColor = Color(0xFFFFFFFF);
  static Color YellowColor = Color(0xFFFACC1D);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      appBarTheme: AppBarTheme(
        centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: BlackColor)),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: BlackColor,
          fontWeight: FontWeight.w700,
        ),
        headline2: TextStyle(
          fontSize: 25,
          color: BlackColor,
          fontWeight: FontWeight.w400,
        ),
        headline3: TextStyle(
          fontSize: 25,
          color: WhiteColor,
          fontWeight: FontWeight.w400,),
        subtitle1: TextStyle(
          fontSize: 25,
          color: BlackColor,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          fontSize: 20,
          color: BlackColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: BlackColor, unselectedItemColor: Colors.white
      ),
      );

  static final ThemeData darkTheme = ThemeData(
      primaryColor: primaryColorDark,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: WhiteColor)),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: WhiteColor,
          fontWeight: FontWeight.w700,
        ),
        headline2: TextStyle(
          fontSize: 25,
          color: YellowColor,
          fontWeight: FontWeight.w400,
        ),
        subtitle1: TextStyle(
          fontSize: 25,
          color: YellowColor,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          fontSize: 20,
          color: YellowColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: YellowColor, unselectedItemColor: Colors.white));
}
