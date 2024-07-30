import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/hadeth/HadethDetailsScreen.dart';
import 'package:new_islami_app_c11/providers/LocaleProvider.dart';
import 'package:new_islami_app_c11/providers/ThemeProvider.dart';
import 'package:new_islami_app_c11/quran/ChapterDetails.dart';
import 'package:new_islami_app_c11/theme/MyTheme.dart';
import 'package:provider/provider.dart';
import 'home/HomeScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => LocaleProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    LocaleProvider localeProvider = LocaleProvider.get(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetails.routeName: (context) => const ChapterDetails(),
        HadethDetailsScreen.routeName: (context) => const HadethDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: themeProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(localeProvider.currentLocale),
    );
  }
}
