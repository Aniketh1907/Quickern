import 'package:flutter/material.dart';

void main(){
  runApp(Aboutpg());
}
class Aboutpg extends StatefulWidget {
  @override
  _AboutpgState createState() => _AboutpgState();
}

class _AboutpgState extends State<Aboutpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[

          Column(
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius:BorderRadius.only(bottomLeft:Radius.circular(95)),
                  child: SizedBox(
                    height: 450,
                    child: Stack(
                      fit:StackFit.expand,
                      children: <Widget>[
                        Image.asset('images/img1.png',fit: BoxFit.cover),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:10.0,right:10.0,top:30.0,bottom: 40.0),

              ),


            ],
          ),
        ],

      ),
    );
  }
}


