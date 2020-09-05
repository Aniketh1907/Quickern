import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'mainHome.dart';
import 'study.dart';
import 'profile.dart';
import 'contact.dart';
void main(){
  runApp(Quickern());
}
class Quickern extends StatefulWidget {
  @override
  _QuickernState createState() => _QuickernState();
}

class _QuickernState extends State<Quickern> {
  int _currentIndex=0;

  final tab=[

    Center(
      child: Aboutpg(),
    ),
    Center(
      child: Study(),
    ),
    Center(
      child: Profile(),
    ),
    Center(
      child: Contact(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.white,
        appBar: GradientAppBar(
        title: Text('Quickern',
        style: TextStyle(color: Colors.white),),
    backgroundColorStart: Colors.purple,
          backgroundColorEnd: Colors.black,
    centerTitle: true,
    elevation: 6,
    titleSpacing: 12,

    ),

          body:SafeArea(
            child: tab[_currentIndex],

          ),
          bottomNavigationBar: CurvedNavigationBar(

            buttonBackgroundColor: Colors.purple,
            backgroundColor: Colors.white,
            color: Colors.black,
            items: <Widget>[

              Icon(Icons.home,color:Colors.white),
              Icon(Icons.assignment,color:Colors.white),
              Icon(Icons.description,color:Colors.white),
              Icon(Icons.person,color:Colors.white),

            ],
            animationDuration: Duration(
              microseconds: 200,
            ),
            animationCurve: Curves.bounceInOut,
            onTap: (index){
              setState(() {
                _currentIndex=index;
              });
            },
          ),
    ),
    );
  }
}
