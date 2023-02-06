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
        body: Container(
              margin: EdgeInsets.all(4),
              child: Column(
                children: [
                    Text(email,style: TextStyle(fontSize: 20),),

                    TextField(
                    onChanged: (value){
                      setState(() {
                        email = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter your email",
                      border: OutlineInputBorder(),
                    )
                  ),

                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter your name",
                      border: OutlineInputBorder(),
                    )
                  ),

                  ElevatedButton(onPressed: (){
                    print(nameController.text);
                  }, child: Text("Click"),)

                ],
              )
        )
      ),
    );
  }
}


