import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/theme/MyTheme.dart';
import 'package:new_islami_app_c11/ui_utilities.dart';

class DefaultScreen extends StatelessWidget {
   DefaultScreen({required this.body,super.key});

  Widget body;


  @override
  Widget build(BuildContext context) {
    bool isDark=MyThemeData.isDark;
    return Stack(
        children: [
          Image.asset(
              getFullPathImage(
                  isDark? "dark_background.png"
                      :"background_pattern.png"),
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          body
    ]);
  }
}
