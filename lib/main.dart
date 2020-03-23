import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home : MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter'),
        actions: <Widget>[
           IconButton(
            icon: Icon(Icons.supervised_user_circle),onPressed: (){},
            ),
            IconButton(
            icon: Icon(Icons.settings),onPressed: (){},
            ),
        ],
      ),
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        child: new Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              child: new CircleAvatar(
                radius:50,
                backgroundImage: ExactAssetImage("assets/img/profil.jpg"),
                ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: new Text('Mohammad Syafiq Marzuki', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
            new Text('Politeknik Harapan Bersama'),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () => print("HOme click"),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.home),
                        Text("Home")
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => print("HOme click"),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.playlist_add),
                        Text("Add Playlist")
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => print("HOme click"),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text("Setting")
                      ],
                    ),
                  ),
                ),
                
                
                
              ],
            ),
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: 
              Image.asset(
              'assets/img/profil.jpg',
              fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            new Text('Flutter Classromm Beginer'),
          ],
        ),
        
      ),
      
    );
  }
}