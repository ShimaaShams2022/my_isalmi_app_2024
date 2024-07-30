import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/ui_utilities.dart';
import '../providers/ThemeProvider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {

    var themeProvider=ThemeProvider.get(context);
    return Container(
      color: Theme.of(context).cardTheme.color,
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: (){
                setState(() {
                  themeProvider.changeTheme(ThemeMode.light);
                });
              },
              child: themeProvider.isDarkEnabled()?
              getUnSelectedItem(context,getTranslation(context).light):
              getSelectedItem(context,getTranslation(context).light)
          ),
          Divider(height: 24,
            color: Colors.transparent,
          ),
         InkWell(
             onTap: (){
               themeProvider.changeTheme(ThemeMode.dark);
             },

             child:  themeProvider.isDarkEnabled()?
             getSelectedItem(context,getTranslation(context).dark):
             getUnSelectedItem(context,getTranslation(context).dark)
         )
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context,String itemName){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(itemName,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.secondary
            ),
          ),
          Icon(
              Icons.check,
              color:Theme.of(context).colorScheme.secondary)
        ],
      ),
    );
  }

  Widget getUnSelectedItem(BuildContext context,String itemName){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(itemName,
            style: Theme.of(context).textTheme.bodyMedium
          ),

        ],
      ),
    );
  }
}
