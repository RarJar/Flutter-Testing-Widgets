import 'package:flutter/material.dart';

void main(){
  runApp(FirstEx());
}

class FirstEx extends StatefulWidget{
  @override
  SecondEx createState() {
    return SecondEx();
  }
}

class SecondEx extends State<FirstEx>{
  String email = "";
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("App Name")),
      ),
    );
  }
}


