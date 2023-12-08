import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';

import '../../constants.dart';
import '../../responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});
   final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color:secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.title!,maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: defaultPadding,),
          Text(project.description!,
            overflow: TextOverflow.ellipsis,
            maxLines:Responsive.isTablet(context)?2: 3,
            style: TextStyle(color: Colors.white54,height: 1.5,fontSize: 10),
          ),
           const SizedBox(height: defaultPadding/2,),
          TextButton(onPressed: (){}, child:Text("Read More>>",style: TextStyle(color: primaryColor,fontSize: 15),))
        ],
      ),
    );
  }
}
