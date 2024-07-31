import 'package:flutter/material.dart';

import '../ui_utilities.dart';



class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset( getFullPathImage('radio_image.png')),
        Divider(height: 50,
          color: Colors.transparent,),
        Text(getTranslation(context).radioTitle,style: Theme.of(context).textTheme.titleMedium),
        Divider(height: 50,
          color: Colors.transparent,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon (Icons.skip_next,size: 50,color: Theme.of(context).colorScheme.secondary,),
            Icon(Icons.play_arrow,size: 50,color: Theme.of(context).colorScheme.secondary,),
            Icon(Icons.skip_previous,size: 50,color: Theme.of(context).colorScheme.secondary,)
          ],
        )
      ],
    );
  }
}
