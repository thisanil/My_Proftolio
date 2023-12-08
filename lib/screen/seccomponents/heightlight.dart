import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'animatedcounter.dart';

class HeightLight extends StatelessWidget {
  const HeightLight({super.key, required this.counter, this.labal});
    final Widget counter;
    final String? labal;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding/2,),
        Text(labal!,style: Theme.of(context).textTheme.subtitle2,)
      ],
    );
  }
}
