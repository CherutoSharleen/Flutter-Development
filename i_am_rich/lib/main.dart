// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 150),
        appBar: AppBar(
          title: Text('Diamond world'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 21, 24, 204),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.jpeg'),
          ),
        ),
      ),
    ),
  );
}
//Commas after every bracket
//After saving, it reformatsit
//Widget Tree: home -> Center ->