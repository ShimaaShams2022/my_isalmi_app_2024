// observable - subject  - provider


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ui_utilities.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeMode currentTheme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme){
    currentTheme= newTheme;
    notifyListeners();
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