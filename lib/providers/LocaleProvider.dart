import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
String currentLocale='en';
static const String languageKey="lang";
final SharedPreferences preferences;
LocaleProvider(this.preferences){
  //get saved language
  readSaveLocale();
}

void readSaveLocale(){

  currentLocale=preferences.getString(languageKey)??'en';
}
void saveLocale(){
  preferences.setString(languageKey, currentLocale);
}


 void changeLocale(String newLocale){
   currentLocale=newLocale;
   notifyListeners();
   saveLocale();
   // save new language
 }

static LocaleProvider get(BuildContext context){
  return Provider.of<LocaleProvider>(context);
}

String getCurrentLocaleText(){
   return currentLocale=='en'?"English":"العربية";
}

}