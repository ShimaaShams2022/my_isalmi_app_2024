import 'package:flutter/material.dart';

class BottomNavigationItem extends BottomNavigationBarItem {
   BottomNavigationItem(
       String title,
       String iconPath,
       Color backGroundColor,

       )
  :super(icon: ImageIcon(AssetImage(iconPath)),
   label: title,
         backgroundColor: backGroundColor,

   );


  }

