import 'package:flutter/material.dart';
import 'home.dart';

void main(){
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    home:MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  void initState() {

    super.initState();
    Future.delayed(Duration(
        seconds: 2
    ),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Quickern(),),);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Image.asset('images/splash1.png'),

    );
  }
}
