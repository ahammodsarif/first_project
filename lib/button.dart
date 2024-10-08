import 'package:first_project/column.dart';
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
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});

  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  final ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    padding: EdgeInsets.all(25),
    backgroundColor: Colors.green,
    foregroundColor: Colors.black87,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40)),
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){MySnackBar("This is Text Button", context);}, child: Text("Text Button")),
          ElevatedButton(onPressed: (){MySnackBar("This is Text Elevated Button", context);}, child: Text("Elevated Button"),style: buttonStyle,),
          OutlinedButton(onPressed: (){MySnackBar("This is OutLine Button", context);}, child: Text("OutLine Button"))
        ],
      ),
    );
  }
}

