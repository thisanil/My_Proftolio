import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding/2,),
          Text(label,style: TextStyle(color: Colors.white54),),
        ],
      ),
    );
  }
}
