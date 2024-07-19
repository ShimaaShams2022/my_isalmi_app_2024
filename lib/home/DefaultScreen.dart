import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
   DefaultScreen({required this.body,super.key});

  Widget body;


  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset("assets/images/background_pattern.png"),
      body
    ]);
  }
}
