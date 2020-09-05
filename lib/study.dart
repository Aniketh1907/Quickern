import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'java.dart' as java;
import 'c.dart'as c;
import 'html.dart' as html;
import 'css.dart' as css;
void main(){
  runApp(Study());
}
class Study extends StatefulWidget {
  @override
  _StudyState createState() => _StudyState();
}

class _StudyState extends State<Study> with SingleTickerProviderStateMixin {
 TabController controller;
  @override
  void initState(){
    super.initState();
    controller=TabController(vsync: this,length: 4);
  }
  @override
  void dispose(){
    super.dispose();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
        GradientAppBar(
          backgroundColorStart: Colors.purple,
          backgroundColorEnd: Colors.black,
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            controller: controller,
              tabs:<Widget>[
                Tab(
                  text: 'C',
                ),
                Tab(
                  text: 'Java',
                ),
                Tab(
                  text: 'HTML',
                ),
                Tab(
                  text: 'CSS',
                ),

              ]

          ),

        ),
      body: TabBarView(
        controller: controller,
          children: <Widget>[
           c.Clang(),
            java.Java(),
            html.Hyper(),
            css.Cascade(),
          ]
      ),
    );
  }
}
