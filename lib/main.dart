import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/hadeth/HadethDetailsScreen.dart';
import 'package:new_islami_app_c11/quran/ChapterDetails.dart';
import 'package:new_islami_app_c11/theme/MyTheme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'home/HomeScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          ChapterDetails.routeName: (context) => const ChapterDetails(),
          HadethDetailsScreen.routeName: (context) => const HadethDetailsScreen(),

        },
      theme:MyThemeData.lightTheme,

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('ar'),

    );
  }
}


