import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'myanimatedtext.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:Responsive.isMobile(context)?2.5: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/bg.jpeg",fit: BoxFit.cover,),
          Container(color: darkColor.withOpacity(0.55),),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Discover my Amazing \nArt Space",style:Responsive.isDesktop(context)? Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.bold,color: Colors.white):
                Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold,color: Colors.white)
                ),
                if(Responsive.isMobile(context))
                  SizedBox(height: defaultPadding/2,),
                MyAnimatedText(),
                SizedBox(height: defaultPadding,),
                if(!Responsive.isMobile(context))
                  ElevatedButton(onPressed: (){},
                    style: TextButton.styleFrom(padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding*2,
                      vertical: defaultPadding,
                    ),
                      backgroundColor: primaryColor,
                    ),

                    child: Text("EXPLORE NOW",style: TextStyle(color: darkColor),)
                ),
              ],
            ),
          )

        ],
      ),

    );
  }
}
