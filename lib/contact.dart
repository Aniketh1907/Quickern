import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
void main(){
  runApp(Contact());
}
class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: GradientAppBar(
          title: Text('Info',
            style: TextStyle(color: Colors.white),),
          backgroundColorStart: Colors.purple,
          backgroundColorEnd: Colors.black,
          centerTitle: true,
          elevation: 6,
          titleSpacing: 12,

        ),
        body: SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                    'For Solution of challenges contact me at',
                    style: TextStyle(

                      fontSize: 20.0,

                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )


                ),

                SizedBox(
                  height: 30.0,
                  width: 350.0,
                  child: Divider(
                    color: Colors.purple,
                  ),
                ),
                Card(

                    color: Colors.black87,
                    margin: EdgeInsets.symmetric(vertical: 20.0,
                        horizontal: 25.0),
                    child: ListTile(

                        title:Center(
                          child: Text(
                              'aniketh_06(instagram)',
                              style: TextStyle(

                                fontSize: 15.0,
                                color: Colors.white,

                              )
                          ),
                        )
                    )
                ),
                Card(

                    color: Colors.black87,
                    margin: EdgeInsets.symmetric(vertical: 20.0,
                        horizontal: 25.0),
                    child: ListTile(

                        title:Center(
                          child: Text(
                              'thank you',
                              style: TextStyle(

                                fontSize: 15.0,
                                color: Colors.white,

                              )
                          ),
                        )
                    )
                )
              ],
            )
        ),
      ),
    );
  }
}
