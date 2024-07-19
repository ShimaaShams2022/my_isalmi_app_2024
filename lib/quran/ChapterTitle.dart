import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/quran/ChapterDetails.dart';

class ChapterTitle extends StatelessWidget {
   ChapterTitle(this.index,this.title,{super.key});

   int index;
  String title;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, ChapterDetails.routeName,
        arguments: ChapterDetailsArg(index, title)
        );
      },
      child: Text(title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,)
      ),
    );;
  }
}
