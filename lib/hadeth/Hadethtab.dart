import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_islami_app_c11/hadeth/HadethTitle.dart';

import '../ui_utilities.dart';


class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset( getFullPathImage('basmala.png')),
      Container(
        width: double.infinity,
        height: 2,
        color: Theme.of(context).dividerColor,
      ),
       Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          getTranslation(context).hadethNumber,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      Container(
        width: double.infinity,
        height: 2,
        color:Theme.of(context).dividerColor,
      ),
      Expanded(
          child: allHadeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethTitle(allHadeth[index]);
                  },
                  itemCount: allHadeth.length,
                  separatorBuilder: (context, int index) => Container(
                    height: 1,
                    color: Theme.of(context).dividerColor,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 64),
                  ),
                )),
    ]);
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> separatedHadeth = fileContent.split("#");

    for (int i = 0; i < separatedHadeth.length; i++) {
      String singleHadeth = separatedHadeth[i];
      List<String> lines = singleHadeth.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth h = Hadeth(title, content);
      allHadeth.add(h);
    }

    setState(() {});
  }
}

class Hadeth {
  String hadethTitle;
  String hadethContent;

  Hadeth(this.hadethTitle, this.hadethContent);
}
