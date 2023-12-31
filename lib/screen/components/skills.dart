import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'animatedindicator.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Skills",style: Theme.of(context).textTheme.subtitle2,),

        ),
        Row(

          children: [
            Expanded(child: AnimatedCricularProgressIndicator(precentage: 0.8, label: 'Flutter')),
            SizedBox(width: defaultPadding,),
            Expanded(child: AnimatedCricularProgressIndicator(precentage: 0.9, label: 'C++')),
            SizedBox(width: defaultPadding,),
            Expanded(child: AnimatedCricularProgressIndicator(precentage: 0.65, label: 'Firebase')),
          ],
        ),

      ],
    );
  }
}
