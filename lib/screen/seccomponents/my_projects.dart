import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import 'package:portfolio/screen/seccomponents/projectgridview.dart';

import '../../constants.dart';
import '../../models/project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Projects",style: Theme.of(context).textTheme.headline6,),
        SizedBox(height: defaultPadding,),
        Responsive(mobile: ProjectsGridview(crossAxisCount: 1,
        childAspectRatio: 1.7
        ),
            mobileLarge:ProjectsGridview(crossAxisCount: 2,) ,
            tablet: ProjectsGridview(childAspectRatio: 1.1,),
            desktop:ProjectsGridview() )
      ],
    );
  }
}
