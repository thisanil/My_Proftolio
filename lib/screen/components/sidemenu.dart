import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screen/components/areainfotext.dart';
import 'package:portfolio/screen/components/coding.dart';

import 'package:portfolio/screen/components/knowledge.dart';
import 'package:portfolio/screen/components/myinfo.dart';
import 'package:portfolio/screen/components/skills.dart';
import 'package:url_launcher/url_launcher.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  _launchURL(String url) async {
    Uri _url = Uri.parse(url);
    if (await launchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }
  Widget build(BuildContext context) {
    return  Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(child: SingleChildScrollView(
             padding: EdgeInsets.all(defaultPadding),
             child: Column(
               children: [
                 AreaInfoText(tittle: 'Residence', text: 'Rajasthan',),
                 AreaInfoText(tittle: 'City', text: 'Jaipur',),
                 AreaInfoText(tittle: 'Age', text: '21',),
                 Skills(),
                 SizedBox(height: defaultPadding,),
                 Coding(),
                 Knowledges(),
                 Divider(),
                 SizedBox(height: defaultPadding/2,),
                 TextButton(
                     onPressed: (){

                     },
                     child: FittedBox(
                       child: Row(
                         children: [
                           Text("DOWNLOAD CV",style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),),
                           SizedBox(width: defaultPadding/2,),
                           SvgPicture.asset("assets/icons/download.svg")
                         ],
                       ),
                     )
                 ),
                 Container(
                   margin: EdgeInsets.only(top: defaultPadding),
                   color: Color(0xFF24242E),
                   child: Row(
                     children: [
                       Spacer(),
                       IconButton(
                           onPressed: ()  {
                             _launchURL('https://www.linkedin.com/in/anil-saini-038a1122a/');
                           },
                           icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                       ),
                       IconButton(
                           onPressed:(){
                             _launchURL('https://github.com/thisanil/');
                           },
                           icon: SvgPicture.asset("assets/icons/github.svg")
                       ),

                       IconButton(
                           onPressed: (){},
                           icon: SvgPicture.asset("assets/icons/twitter.svg")
                       ),
                       Spacer()
                     ],
                   ),
                 )



               ],
             ),
            ),
            ),

          ],
        ),
      ),
    );

  }
}
