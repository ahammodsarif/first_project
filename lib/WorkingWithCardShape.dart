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
      theme: ThemeData(primarySwatch: Colors.pink),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
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
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 100,
        title: Text("Inventory App",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.lime,
        ),
        ),
      ),
      body: Center(
        child: Card(
          color: Color.fromRGBO(162, 81, 216, 1.0),
          elevation: 40,
          shadowColor: Colors.tealAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text("This is Card",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
        ),
      )
    );
  }
}

