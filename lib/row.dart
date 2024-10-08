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
      title: "My App",
      theme: ThemeData(primarySwatch: Colors.teal),
      darkTheme: ThemeData(primarySwatch: Colors.yellow),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      checkerboardRasterCacheImages: false,
      checkerboardOffscreenLayers: false,
      highContrastDarkTheme: ThemeData.dark(),
      highContrastTheme: ThemeData.light(),
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InventoryApp"),
        toolbarOpacity: 0.9,
        toolbarHeight: 100,
        titleSpacing: 10,
        elevation: 30,
        shadowColor: Colors.cyanAccent,
        backgroundColor: Colors.grey,
        centerTitle: true,

        titleTextStyle: TextStyle(
          fontFamily: "Roboto",
          fontSize: 23,
          fontStyle: FontStyle.normal,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),

        actions: [
          IconButton(onPressed: (){MySnackBar("This is Home Button", context);}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){MySnackBar("This is Search Button", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("This is Setting Button", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("This is Person Button", context);}, icon: Icon(Icons.person)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
        onPressed: (){
          MySnackBar("This is Floating Action Button", context);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.grey,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        ],

        onTap: (int index){
          if(index == 0){
            MySnackBar("This is Home Button", context);
          }
          if(index == 1){
            MySnackBar("This is Setting Button", context);
          }
          if(index == 2){
            MySnackBar("This is Search Button", context);
          }
          if(index == 3){
            MySnackBar("This is Person Button", context);
          }
        },
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Ahammod Sarif"),
                accountEmail: Text("ahammodtannababu@gmail.com"),
                currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s"),
              ),
            ),
            ListTile(
              title: Text("Home"),leading: Icon(Icons.home),
              onTap: (){
                MySnackBar("This is Home Button", context);
              },
            ),
            ListTile(title: Text("Search"),leading: Icon(Icons.search),
              onTap: (){
                MySnackBar("This is Search Button", context);
              },
            ),
            ListTile(title: Text("Setting"),leading: Icon(Icons.settings),
              onTap: (){
                MySnackBar("This is Setting Button", context);
              },
            ),
            ListTile(title: Text("Person"),leading: Icon(Icons.person),
              onTap: (){
                MySnackBar("This is Person Button", context);
              },
            ),
            ListTile(title: Text("Phone"),leading: Icon(Icons.phone),
              onTap: (){
                MySnackBar("This is Phone Button", context);
              },
            ),
          ],
        ),
      ),

      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Ahammod Sarif"),
                accountEmail: Text("ahammodtannababu@gmail.com"),
                currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s"),
              ),
            ),
            ListTile(
              title: Text("Home"),leading: Icon(Icons.home),
              onTap: (){
                MySnackBar("This is Home Button", context);
              },
            ),
            ListTile(title: Text("Search"),leading: Icon(Icons.search),
              onTap: (){
                MySnackBar("This is Search Button", context);
              },
            ),
            ListTile(title: Text("Setting"),leading: Icon(Icons.settings),
              onTap: (){
                MySnackBar("This is Setting Button", context);
              },
            ),
            ListTile(title: Text("Person"),leading: Icon(Icons.person),
              onTap: (){
                MySnackBar("This is Person Button", context);
              },
            ),
            ListTile(title: Text("Phone"),leading: Icon(Icons.phone),
              onTap: (){
                MySnackBar("This is Phone Button", context);
              },
            ),
          ],
        ),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100,width: 100,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX2piR0yfPt2OLs1JFfkk40se1w_eDg-n9ag&s"),),
          Container(height: 100,width: 100,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX2piR0yfPt2OLs1JFfkk40se1w_eDg-n9ag&s"),),
          Container(height: 100,width: 100,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX2piR0yfPt2OLs1JFfkk40se1w_eDg-n9ag&s"),),
          Container(height: 100,width: 100,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX2piR0yfPt2OLs1JFfkk40se1w_eDg-n9ag&s"),),
          Container(height: 100,width: 100,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX2piR0yfPt2OLs1JFfkk40se1w_eDg-n9ag&s"),),
        ],

      ),
    );
  }
}