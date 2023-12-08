import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AnimatedCricularProgressIndicator extends StatelessWidget {
  const AnimatedCricularProgressIndicator({super.key, required this.precentage, required this.label});
  final double precentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0,end: precentage),
              duration: defaultDuration,
              builder: (context,double value,child)=>
                  Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value:value,
                        color: primaryColor,
                        backgroundColor: darkColor,
                      ),
                      Center(
                        child: Text(
                          (value*100).toInt().toString()+"%",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      )
                    ],
                  )
          ),
        ),
        SizedBox(height: defaultPadding/2,),
        Text(label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,)
      ],
    );
  }
}
