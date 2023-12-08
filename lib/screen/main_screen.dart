import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screen/components/sidemenu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.childern});
  final List<Widget> childern;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)?null:
         AppBar(
        backgroundColor: bgColor,
        leading:Builder(
          builder: (context)=> IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        )
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))
              Expanded(
                flex: 2,

                  child:SideMenu(),
              ),
              SizedBox(width: defaultPadding,),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child:Column(
                      children: [
                        ...childern,
                      ],
                    )
                  )
              ),
              SizedBox(width: defaultPadding,),
            ],
          ),
        ),
      ),
    );
  }
}
