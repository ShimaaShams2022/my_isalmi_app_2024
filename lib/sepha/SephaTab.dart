import 'dart:math';

import 'package:flutter/material.dart';

import '../theme/MyTheme.dart';


class SephaTab extends StatefulWidget {
  const SephaTab({super.key});

  @override
  State<SephaTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<SephaTab> {

  List<String> allDoaa = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  String mydoaa = 'سبحان الله';
  int numberOfTasbe7 = 0;
  double angleRotateSebha =(pi* 20)/180;
  int counterForTasbeh = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [

          Stack(
              children:[
                Positioned(
                    top:-5,
                    right: 50,
                    width: 60,
                    height: 60,
                    child:
                    Image(image: AssetImage('assets/images/headOfSebha.png'))
                ),
                Container(
                    padding: EdgeInsets.all(35),
                    width: 250,
                    height: 250,
                    child: Transform.rotate(
                        angle: angleRotateSebha,
                        child: Image(
                            image: AssetImage('assets/images/bodyOfSebha.png')))
                ),
              ]
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Text('عدد التسبيحات',
                  style: TextStyle(
                    fontSize: 30,
                  ))),
          Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(24)),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text('${numberOfTasbe7}',
                  style: TextStyle(fontSize: 30)
              )
          ),
          ElevatedButton(
              onPressed: () {
                addOneTasbeh();
              },
              style: ElevatedButton.styleFrom(
                  padding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  backgroundColor: MyThemeData.lightPrimary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)) // background
              ),
              child: Text(mydoaa,
                  style:TextStyle(
                      fontSize: 30,
                      color: Colors.black
                  ) ))
        ],
      ),
    );
  }

  void addOneTasbeh() {

    numberOfTasbe7++;
    angleRotateSebha = angleRotateSebha + 0.1;
    setState(() {});

    if (numberOfTasbe7 == 33) {
      numberOfTasbe7 = 0;
      counterForTasbeh++;
    }
    if (counterForTasbeh == 1) {
      mydoaa = allDoaa[1];
      setState(() {});
    } else if (counterForTasbeh == 2) {
      mydoaa = allDoaa[2];
      setState(() {});
    } else if (counterForTasbeh == 3) {
      counterForTasbeh = 0;
      mydoaa = allDoaa[0];
      setState(() {});
    }
  }
}
