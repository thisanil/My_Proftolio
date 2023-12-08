import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/recommendations.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key, required this.recommendation});
   final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: defaultPadding/2,),
          Text(recommendation.source!,
            style: TextStyle(color: Colors.white54,fontSize: 10),
          ),
          const SizedBox(height: defaultPadding,),
          Text(recommendation.text!,
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            style: TextStyle(color: Colors.white54,height: 1.5,fontSize: 10),
          ),
        ],
      ),
    );
  }
}
