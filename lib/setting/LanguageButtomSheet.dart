import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/providers/LocaleProvider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {

    var localeProvider =LocaleProvider.get(context);
    return Container(
      color: Theme.of(context).cardTheme.color,
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: (){
                localeProvider.changeLocale('en');
              },
              child: localeProvider.currentLocale=='en'?
              getSelectedItem(context,'English'):
              getUnSelectedItem(context,'English')
          ),
          Divider(height: 24,
            color: Colors.transparent,
          ),
          InkWell(
              onTap: (){
                localeProvider.changeLocale('ar');
              },
              child: localeProvider.currentLocale=='ar'?
              getSelectedItem(context,'Arabic'):
              getUnSelectedItem(context,'Arabic')
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
