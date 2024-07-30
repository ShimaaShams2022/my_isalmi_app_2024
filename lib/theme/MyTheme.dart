import 'package:flutter/material.dart';

class MyThemeData{
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color darkSecondary = Color(0xFFFACC1D);

  static final ThemeData lightTheme= ThemeData(

    dividerColor: lightPrimary,
    textTheme: TextTheme(
      bodyLarge:TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          fontFamily: 'Intel',
          color: Colors.black
      ),
      bodyMedium:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontFamily: 'Intel',
          color: Colors.black
      ),

        titleLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: 'Messiri',
            color: Colors.black
        ),
        titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: 'Messiri',
            color: Colors.black
        ),

    ),

    cardTheme: CardTheme(

      color: Colors.white,
      surfaceTintColor:null ,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle:TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'Intel',
      ),
      backgroundColor: lightPrimary,
      selectedItemColor:  Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size:32)
    ),

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
        onPrimary:Colors.black ,
        secondary:lightPrimary,
        onSecondary: Colors.white


    ),
  );


  static final ThemeData darkTheme= ThemeData(

    dividerColor: darkSecondary,
    textTheme: TextTheme(
      bodyLarge:TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          fontFamily: 'Intel',
          color: Colors.white
      ),
      bodyMedium:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontFamily: 'Intel',
          color: Colors.white
      ),
      bodySmall:TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'Intel',
          color: Colors.white
      ),
        titleLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: 'Messiri',
            color: Colors.white
        ),
        titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: 'Messiri',
            color: Colors.white
        ),

    ),
    cardTheme: CardTheme(

      color: darkPrimary,
      surfaceTintColor: null,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedLabelStyle:TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontFamily: 'Intel',
        ),
        backgroundColor: darkPrimary,
        selectedItemColor:   darkSecondary,
        unselectedItemColor:Colors.white,
        selectedIconTheme: IconThemeData(size:32)
    ),

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        )
    ),
    colorScheme: ColorScheme.fromSeed(

        seedColor: darkPrimary,
        primary:darkPrimary,
        onPrimary:Colors.white ,
        secondary:darkSecondary,
        onSecondary: Colors.black


    ),

  );

}