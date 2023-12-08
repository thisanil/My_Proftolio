import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(

          children: [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/icons/pf.jpg'),

            ),
            Spacer(),
            Text("Anil Saini",style: Theme.of(context).textTheme.subtitle2,),
            Text("Flutter Developer",style: TextStyle(fontSize: 14,color: Colors.white54,fontWeight: FontWeight.w200,height: 1.5),),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
