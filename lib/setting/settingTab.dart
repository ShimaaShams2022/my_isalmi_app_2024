

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/setting/LanguageButtomSheet.dart';
import 'package:new_islami_app_c11/setting/ThemeBottomSheet.dart';
import 'package:new_islami_app_c11/ui_utilities.dart';

import '../providers/LocaleProvider.dart';
import '../providers/ThemeProvider.dart';


class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {

    var themeProvider=ThemeProvider.get(context);
    var localeProvider =LocaleProvider.get(context);

    return Padding(
      padding: const EdgeInsets.only(top: 36,left: 12,right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(getTranslation(context).theme,
              style: Theme.of(context).textTheme.bodyMedium),
          Divider(height: 12,
            color: Colors.transparent,),
          InkWell(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 2
                ),
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).cardTheme.color
              ),
                child: Text(
                    themeProvider.getCurrentThemeText(context),
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.secondary
                    )
                )
            ),
            onTap: (){
              showThemeBottomSheet(context);
            },
          ),

          Divider(height: 24,
          color: Colors.transparent,
          ),
          Text(getTranslation(context).language,style: Theme.of(context).textTheme.bodyMedium),
          Divider(height: 12,
            color: Colors.transparent,
          ),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 2
                    ),
                    borderRadius: BorderRadius.circular(18),
                    color: Theme.of(context).cardTheme.color
                ),
                child: Text(localeProvider.getCurrentLocaleText(),style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.secondary
                )
                )
            ),
          ),

        ],

      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return ThemeBottomSheet();

    }
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context)
    {
      return LanguageBottomSheet();

    }
    );
  }
}
