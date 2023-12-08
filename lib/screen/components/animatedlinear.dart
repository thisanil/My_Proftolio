import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({super.key, required this.pracentage, required this.label});
   final double pracentage;
   final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0,end:pracentage ),
        duration: defaultDuration,
        builder: (context,double value,child)=> Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label,style: Theme.of(context).textTheme.subtitle1,),
                Text((value*100).toInt().toString()+'%')
              ],
            ),
            SizedBox(height: defaultPadding/2,),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
