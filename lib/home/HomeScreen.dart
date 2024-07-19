import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/hadeth/Hadethtab.dart';
import 'package:new_islami_app_c11/home/DefaultScreen.dart';
import 'package:new_islami_app_c11/quran/QuranTab.dart';
import 'package:new_islami_app_c11/radio/RadioTab.dart';
import 'package:new_islami_app_c11/sepha/SephaTab.dart';
import 'package:new_islami_app_c11/theme/MyTheme.dart';
import 'package:new_islami_app_c11/home/ButtomNavItem.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  //'assets/images/background_pattern.png',
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(body:
              Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text('Islami'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              setState(() {
                selectedIndex=index;
              });
            },
            currentIndex: selectedIndex,
            items: [
              ButtomNavItem( 'Quran','assets/images/ic_quran.png'),
              ButtomNavItem( 'Al Ahadeth','assets/images/ic_hadeth.png'),
              ButtomNavItem( 'Sebha','assets/images/ic_sebha.png'),
              ButtomNavItem( 'Radio','assets/images/ic_radio.png'),
            ],
          ),
          body: tabs[selectedIndex],
        ),

    );
  }
  var tabs=[QuranTab(),HadethTab(),SephaTab(),RadioTab()];
}
