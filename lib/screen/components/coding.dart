import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screen/components/animatedlinear.dart';

class Coding extends StatelessWidget {
  const Coding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding",style: Theme.of(context).textTheme.subtitle2,),
        ),
        AnimatedLinearProgressIndicator(pracentage: 0.75, label: "Dart"),
        AnimatedLinearProgressIndicator(pracentage: 0.9, label: "C++"),
        AnimatedLinearProgressIndicator(pracentage: 0.49, label: "Java"),

      ],
    );
  }
}
