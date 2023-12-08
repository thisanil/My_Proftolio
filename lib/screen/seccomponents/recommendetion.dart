import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recommendations.dart';
import 'package:portfolio/screen/seccomponents/recommendationcard.dart';



class Recommndetion extends StatelessWidget {
  const Recommndetion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding,),
        Text("Recommendations",style: Theme.of(context).textTheme.headline6,),
        const SizedBox(height: defaultPadding,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(demo_recommendations.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: RecommendationCard(recommendation: demo_recommendations[index],),
                    )
            ),
          ),
        )
        ,
      ],
    );
  }
}
