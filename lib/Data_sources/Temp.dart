import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Tempdata{

  String Location="";
  String date="";
  String url="";
  void data()async{
    final String rlink="http://worldtimeapi.org/api/timezone/Europe/London";
    Uri link=Uri.parse(rlink);
    Response rep= await get(link);
    Map info=jsonDecode(rep.body);

    date= await info["datetime"];
    print(date);
  }

}