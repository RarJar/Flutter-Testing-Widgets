import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Scaffold(
        appBar: AppBar(title: Text('First App Title')),
        body: Column(
          children: [
            TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text('Click Me',style: TextStyle(color: Colors.black),),
            onPressed: (){},  
          ),

          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.yellow,
            ),
            child: Text('Outline'),
            onPressed: (){},
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
            child: Text('Elevated',style: TextStyle(color: Colors.white),),
            onPressed: (){},
          ),

          FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Text('Click',style: TextStyle(color: Colors.white),),
            onPressed: (){},
          ),

          FloatingActionButton.extended(
            backgroundColor: Colors.green,
            icon: Icon(Icons.phone),
            label: Text('Click'),
            onPressed: (){},
          ),

          IconButton(
            color: Colors.blue,
            iconSize: 30,
            tooltip: 'Volume',
            icon: Icon(Icons.volume_down),
            onPressed: (){},
          ),

          PopupMenuButton(
            onSelected: (value){
              print(value);
            },
            itemBuilder: (context){
            return[
              PopupMenuItem(
                value: 1,
                child: Text('one'),
              ),
              PopupMenuItem(
                value: 2,
                child: Text('two'),
              ),
              PopupMenuItem(
                value: 3,
                child: Text('three'),
              ),
            ];
          }),

          DropdownButton(
            hint: Text('Select item'),
            items: [
              DropdownMenuItem(child: Text('One'),value: 'one',),
              DropdownMenuItem(child: Text('Two'),value: 'two',),
              DropdownMenuItem(child: Text('Three'),value: 'three',)
            ], onChanged: (value){
              print(value);
            }),

            DropdownButton(
              hint: Text('Select item'),
              items: ['one','two','three'].map((e) {
                return DropdownMenuItem(child: Text(e),value: e,);
              }).toList(),
              onChanged: (value){
              print(value);
            })

          ],
        )
        ),
    );
  }
}
