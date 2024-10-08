import 'package:first_project/alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.lime),
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});

  ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    backgroundColor: Colors.lime,
    minimumSize: Size(double.infinity, 60),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"),),),
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name"),),),
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email"),),),
          Padding(padding: EdgeInsets.all(10),child: ElevatedButton(onPressed: (){}, child: Text("Submit"),style: buttonStyle,),),
        ],
      ),

    );
  }
}

