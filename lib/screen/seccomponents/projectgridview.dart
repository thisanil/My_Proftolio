import 'package:flutter/cupertino.dart';
import 'package:portfolio/screen/seccomponents/projectcard.dart';

import '../../constants.dart';
import '../../models/project.dart';

class ProjectsGridview extends StatelessWidget {
  const ProjectsGridview({super.key,  this.crossAxisCount=3,  this.childAspectRatio=1.3});
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          mainAxisSpacing:defaultPadding,
          crossAxisSpacing: defaultPadding
      ),

      itemBuilder: (context,index)=>ProjectCard(project: demo_projects[index]),

    );
  }
}
