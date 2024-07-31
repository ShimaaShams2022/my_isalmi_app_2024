// observable - subject  - provider


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ui_utilities.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeMode currentTheme = ThemeMode.light;

  static const String isDarkTheme="theme";
  final SharedPreferences preferences;

  ThemeProvider(this.preferences){
    //get saved language
    readSavedTheme();
  }

  void readSavedTheme(){

   var isDark=preferences.getBool(isDarkTheme)?? false;
   currentTheme=isDark? ThemeMode.dark:ThemeMode.light;
  }
  void saveTheme(){
    preferences.setBool(isDarkTheme, isDarkEnabled() );
  }


  void changeTheme(ThemeMode newTheme){
    currentTheme= newTheme;
    notifyListeners();
    saveTheme();
  }

  bool isDarkEnabled() {
    return currentTheme==ThemeMode.dark;
  }

  static ThemeProvider get(BuildContext context){
    return Provider.of<ThemeProvider>(context);
  }

  String getCurrentThemeText(BuildContext context){
     if(currentTheme==ThemeMode.dark) return getTranslation(context).dark;
        else return getTranslation(context).light;
  }
}