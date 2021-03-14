import 'package:flutter/material.dart';

extension CustomThemeData on ThemeData {
  ThemeData get customThemeData => ThemeData(
        primaryColor: Colors.white,
        indicatorColor: Color(0xFF00c1cf),
        hintColor: Color(0xFFff3577),
        primaryColorDark: Colors.black,
        backgroundColor: Color(0xFFeaeaea),
        disabledColor: Color(0xFFa9a9a9),
        primaryTextTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 28.0, color: Colors.black, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
          headline3: TextStyle(fontSize: 16.0, color: Color(0xFFa9a9a9)),
          headline4: TextStyle(
              fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      );
}
