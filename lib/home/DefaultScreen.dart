import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/providers/ThemeProvider.dart';
import 'package:new_islami_app_c11/ui_utilities.dart';
import 'package:provider/provider.dart';

class DefaultScreen extends StatelessWidget {
   DefaultScreen({required this.body,super.key});

  Widget body;


  @override
  Widget build(BuildContext context) {

    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    bool isDark=provider.isDarkEnabled();
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
