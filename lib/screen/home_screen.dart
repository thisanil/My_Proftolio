
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

import 'package:portfolio/models/recommendations.dart';
import 'package:portfolio/screen/components/homebanner.dart';
import 'package:portfolio/screen/main_screen.dart';
import 'package:portfolio/screen/seccomponents/heightlightinfo.dart';
import 'package:portfolio/screen/seccomponents/my_projects.dart';
import 'package:portfolio/screen/seccomponents/recommendetion.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
        childern:[
          HomeBanner(),
          SizedBox(height: defaultPadding/2,),
          HeightLightInfo(),
          MyProjects(),
          Recommndetion()


        ]

    );
  }
}
