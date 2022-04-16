import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Tempdata{

  String Location="";
  String date="";
  String url="";
Tempdata({required this.url,required this.Location});

 Future <void> data()async{
    final String rlink="http://worldtimeapi.org/api/timezone/Europe/$url";
    Uri link=Uri.parse(rlink);
    Response rep= await get(link);
    Map info=jsonDecode(rep.body);

    date= await info["datetime"];
    print(date);
  }

}