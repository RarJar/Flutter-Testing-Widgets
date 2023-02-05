import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottons.dart';

void main(){
  runApp(HomePage());
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(title: Text('App Name')),
      ),
    );
  }
}


  




