import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white54),
      maxLines: 1,
      child: Row(
        children: [
          Text("I build "),
         Responsive.isMobile(context)? Expanded(
            child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Responsive Mobile App.'),
                  TyperAnimatedText('Complete e-Commerce app UI.'),
                  TyperAnimatedText('My Notes app.'),

                ]

            ),
          ): AnimatedTextKit(
             animatedTexts: [
               TyperAnimatedText('Responsive Mobile App.'),
               TyperAnimatedText('Complete e-Commerce app UI.'),
               TyperAnimatedText('My Notes app.'),

             ]

         ),
        ],
      ),
    );
  }
}
