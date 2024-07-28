import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/hadeth/Hadethtab.dart';
import 'package:new_islami_app_c11/home/DefaultScreen.dart';
import 'package:new_islami_app_c11/quran/QuranTab.dart';
import 'package:new_islami_app_c11/radio/RadioTab.dart';
import 'package:new_islami_app_c11/sepha/SephaTab.dart';
import 'package:new_islami_app_c11/home/ButtomNavItem.dart';
import 'package:new_islami_app_c11/theme/MyTheme.dart';
import 'package:new_islami_app_c11/ui_utilities.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  //'assets/images/background_pattern.png',
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('إسلامي',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            ButtonNavItem('Quran', getFullPathImage('ic_quran.png'),
            Theme.of(context).colorScheme.primary),
            ButtonNavItem('Al Ahadeth',  getFullPathImage('ic_hadeth.png'),
                Theme.of(context).colorScheme.primary),
            ButtonNavItem('Sebha',  getFullPathImage('ic_sebha.png'),
                Theme.of(context).colorScheme.primary),
            ButtonNavItem('Radio',  getFullPathImage('ic_radio.png'),
                Theme.of(context).colorScheme.primary),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  var tabs = [QuranTab(), HadethTab(), SephaTab(), RadioTab()];
}
