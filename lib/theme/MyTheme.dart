import 'package:flutter/material.dart';

class MyThemeData{
  static const Color lightPrimary =Color(0xFFB7935F);
  static final ThemeData lightTheme=
  ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black
      ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
        )
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: lightPrimary,
        primary:lightPrimary,
        onPrimary:Colors.white ,
        secondary:lightPrimary,
        onSecondary: Colors.black


    ),

  );
}