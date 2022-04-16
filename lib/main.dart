import 'dart:convert';
import 'package:api_test/Data_sources/Temp.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  )
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
String date="";

  @override
  void initState(){
    data();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white38,

        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                ),
                child: Column(
                  children: <Widget>[

                  ],
                )
            ),
            ListTile(
            leading: Text("$date"),
            ),
            ListTile()

          ],
        ),

      ),
      appBar: AppBar(
        title: Title(color: Colors.white,
            child: Text("Api Test")
        ),
      ),
    );
  }
}
