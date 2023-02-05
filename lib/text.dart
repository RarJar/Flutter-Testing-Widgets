import 'package:flutter/material.dart';

void main() {
  runApp(MyHomepage());
}

class MyHomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home:Scaffold(
        appBar: AppBar(title: Text('My Home page'),),
        body: Column(
          children: [
            Text('Hello World',style: TextStyle(color: Colors.red),),

            RichText(
              text: TextSpan(text: "Password",style: TextStyle(color: Colors.blue),
              children: [
                TextSpan(text: "Forget password",style: TextStyle(color: Colors.red))
              ]
              ),
            )
          ],
        ),
      )
    );
  }
}
