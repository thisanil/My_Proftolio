import 'package:flutter/cupertino.dart';

import 'animatedcounter.dart';
import 'heightlight.dart';

class HeightLightInfo extends StatelessWidget {
  const HeightLightInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        HeightLight(counter: AnimatedCounter(value: 5,text: "+",),
          labal: "GitHub Project",
        ),
        HeightLight(counter: AnimatedCounter(value: 135,text: "K+",),
          labal: "Stars",
        ),
      ],
    );
  }
}
