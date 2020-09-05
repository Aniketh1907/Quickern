import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


void main(){
  runApp(Profile());
}
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  List names=['leap year or not?','Second Smallest','Largest ','sum of digit','reversed Number','Even or odd','Array Rotation'];
  List designations=['challenge1\ni/p:i.e-two test cases\n2\n2001\n2012\no/p:\nNo\nyes',
    'challenge2\ni/p:\n2(test case)\n15 40 20\n12 14 56\no/p:\n15\n14',
    'challange3\ni/p:\n2(test case)\n15 40 20\n12 14 56\no/p:\n40\n56',
    'challenge4\ni/p:\n2(test case)\n 12345\n 5678\no/p:\n15\n26',
    'challenge5\ni/p:\n2(test case)\n 12345\n 5678\n o/p:\n54321\n8765',
    'challenge6\ni/p:\n6\n 1 2 3 4 5 6\no/p:\n1 3 5\n2 4 6',
    'challenge7\ni/p:\n1(test case)\n 6(number of elements)\n 2(rotate array by )\n1 2 3 4 5 6\no/p:\n5 6 1 2 3 4 '];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.white,
        appBar: GradientAppBar(
        title: Text('Java challenge',
        style: TextStyle(color: Colors.white),),
    backgroundColorStart: Colors.purple,
    backgroundColorEnd: Colors.black,
    centerTitle: true,
    elevation: 6,
    titleSpacing: 12,

    ),
          body: ListView.builder(itemCount: 7,
            shrinkWrap: true,
            itemBuilder:(BuildContext context,int index)=>Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 7.0),
              child: Card(
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 55.0,
                            height: 55.0,
                            color: Colors.purple,
                            child: CircleAvatar(
                              backgroundImage:  AssetImage('images/log.png'),
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(names[index],style: TextStyle(color:Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)),
                              Text(designations[index],style: TextStyle(color:Colors.grey,fontSize: 14.0,fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
