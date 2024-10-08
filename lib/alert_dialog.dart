import 'package:first_project/button.dart';
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
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});

  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  MyAlertDialog(context){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return Expanded(
            child: AlertDialog(
              title: Text("Alert !"),
              content: Text("Do you want to delete"),
              actions: [
                TextButton(onPressed: (){
                  MySnackBar("Delete Success", context);
                  Navigator.of(context).pop();
                }, child: Text("Yes")),
                TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
              ],
            )
        );
      }
    );
  }

/*

  final ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    padding: EdgeInsets.all(25),
    backgroundColor: Colors.green,
    foregroundColor: Colors.black87,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30))
    )
  );

 */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InventoryApp"),
      ),

      body:Center(
        child: ElevatedButton(child: Text("Click Me"),onPressed: (){MyAlertDialog(context);},),
      )
    );
  }
}

