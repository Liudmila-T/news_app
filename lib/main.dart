import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().customThemeData,
      home: HomePage(),
    );
  }
}
