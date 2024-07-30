import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/hadeth/Hadethtab.dart';
import 'package:new_islami_app_c11/home/DefaultScreen.dart';
import 'package:new_islami_app_c11/quran/QuranTab.dart';
import 'package:new_islami_app_c11/radio/RadioTab.dart';
import 'package:new_islami_app_c11/sepha/SephaTab.dart';
import 'package:new_islami_app_c11/home/BottomNavigationItem.dart';
import 'package:new_islami_app_c11/ui_utilities.dart';
import 'package:new_islami_app_c11/setting/settingTab.dart';

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
          title: Text(getTranslation(context).appTitle,
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
            BottomNavigationItem(getTranslation(context).quranTab, getFullPathImage('ic_quran.png'),
            Theme.of(context).colorScheme.primary),
            BottomNavigationItem(getTranslation(context).hadethTab,  getFullPathImage('ic_hadeth.png'),
                Theme.of(context).colorScheme.primary),
            BottomNavigationItem(getTranslation(context).tasbehTab,  getFullPathImage('ic_sebha.png'),
                Theme.of(context).colorScheme.primary),
            BottomNavigationItem(getTranslation(context).radioTab,  getFullPathImage('ic_radio.png'),
                Theme.of(context).colorScheme.primary),
            BottomNavigationBarItem(
              backgroundColor:Theme.of(context).colorScheme.primary ,
              label: getTranslation(context).settingTab,
                icon: const Icon(Icons.settings)
            )

          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  var tabs = [QuranTab(), HadethTab(), SephaTab(), RadioTab(),SettingTab()];
}
