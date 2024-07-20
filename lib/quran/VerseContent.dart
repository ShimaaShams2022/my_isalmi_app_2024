import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/quran/ChapterDetails.dart';

class VerseContent extends StatelessWidget {
  VerseContent(this.index,this.content,{super.key});

  int index;
  String content;

  @override
  Widget build(BuildContext context) {
    return Text('$content (${index+1})',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,)
    );
  }
}