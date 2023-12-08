import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'knowlwdgetext.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Knowledges",style: Theme.of(context).textTheme.subtitle2,),
        ),
        KnowledgeText(label: "Flutter, Dart "),
        KnowledgeText(label: "C++, DSA "),
        KnowledgeText(label: "Java ,SQL"),
        KnowledgeText(label: "GIT Knowledge"),
      ],
    );
  }
}
