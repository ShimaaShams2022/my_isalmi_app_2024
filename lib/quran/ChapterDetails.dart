import 'package:flutter/material.dart';
import 'package:new_islami_app_c11/home/DefaultScreen.dart';



class ChapterDetails extends StatelessWidget {
  const ChapterDetails({super.key});

  static const String routeName = 'ChapterDetails';

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArg;
    return DefaultScreen(body:  Scaffold(
      appBar: AppBar(
        title:Text(arg.chapterName),
      ),
      body: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 24,
        margin: const EdgeInsets.symmetric(vertical: 64,horizontal: 24),
        child: ListView.builder(itemBuilder:(context,index){
             const Text("Details",
             style: TextStyle(
               backgroundColor: Colors.white,
               color: Colors.black
             ),
             );
        },itemCount: 100,),
      ),
    )
    );


  }
}
class ChapterDetailsArg{
  int chapterIndex;
  String chapterName;

  ChapterDetailsArg(this.chapterIndex,this.chapterName);


}