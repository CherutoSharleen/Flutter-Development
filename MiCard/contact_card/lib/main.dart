// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Stateless widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // const MyApp({Key key}) : super(key: key);

//build is called whenever we create a new version of the widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 100.0,
                width: 100.0,
                //sets margin to all the sides
                // margin EdgeInsets.all(20.0),
                //vertical: top, bottom ; horizontal:left right
                // margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
                child: Text('Container 1'),
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Text('Container 2'),
              ),
            
              Container(
                width: 100,
                height: 100,
                child: Text('Container 3');
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
