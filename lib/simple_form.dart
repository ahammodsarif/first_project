import 'package:first_project/alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(30),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"),),),
          Padding(padding: EdgeInsets.all(30),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Second Name"),),),
          Padding(padding: EdgeInsets.all(30),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Third Name"),),)
        ],
      ),
    );
  }
}

