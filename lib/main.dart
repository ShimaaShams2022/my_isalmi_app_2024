import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/quran/ChapterDetails.dart';
import 'package:new_islami_app_c11/theme/MyTheme.dart';

import 'home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          ChapterDetails.routeName: (context) => ChapterDetails(),

        },
      theme:MyThemeData.lightTheme,


    );
  }
}
