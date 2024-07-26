import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/theme/MyTheme.dart';


class ButtonNavItem extends BottomNavigationBarItem {
   ButtonNavItem(String title,String iconPath)
  :super(icon: ImageIcon(AssetImage(iconPath)),
   label: title,
   backgroundColor: MyThemeData.lightPrimary
   );


  }

