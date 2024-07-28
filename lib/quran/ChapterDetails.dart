import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_islami_app_c11/home/DefaultScreen.dart';
import 'package:new_islami_app_c11/quran/VerseContent.dart';
import 'package:new_islami_app_c11/theme/MyTheme.dart';



class ChapterDetails extends StatefulWidget {
   const ChapterDetails({super.key});

  static const String routeName = 'ChapterDetails';

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {

  List<String> verses=[];

  @override
  Widget build(BuildContext context) {

    var arg = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArg;

     // list still loading
    if (verses.isEmpty) readFileData(arg.chapterIndex);


    return DefaultScreen(body:  Scaffold(
      appBar: AppBar(
        title:Text(arg.chapterName,
        style: Theme.of(context).textTheme.bodyLarge
          ,),
      ),
      body: Card(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 24,
        margin: const EdgeInsets.symmetric(vertical: 64,horizontal: 24),


        child: verses.isEmpty? const Center(child: CircularProgressIndicator())
        :ListView.separated(itemBuilder:(context,index){
             return VerseContent(index, verses[index]);
        }, itemCount: verses.length,
          separatorBuilder: (BuildContext context, int index)=>
          Container(
            height: 1,
            color: Theme.of(context).dividerColor,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 64),
          ),

        )
      ),
    ));


  }

  void readFileData(int fileIndex) async{
    String fileContent =await rootBundle.loadString('assets/files/${fileIndex+1}.txt');

    List<String> lines=fileContent.trim().split('\n');

    //show data
    setState(() {
       verses =lines;
    });

  }
}
class ChapterDetailsArg{
  int chapterIndex;
  String chapterName;

  ChapterDetailsArg(this.chapterIndex,this.chapterName);


}