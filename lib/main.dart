import 'dart:convert';

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

  void data()async{
    final String rlink="http://worldtimeapi.org/api/timezone/Europe/Berlin";
    Uri link=Uri.parse(rlink);
    Response rep= await get(link);
    Map info=jsonDecode(rep.body);
    print(rep.body);
  }

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
