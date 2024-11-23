// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, use_key_in_widget_constructors, file_names, unused_import, sort_child_properties_last,prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable,non_constant_identifier_names, unnecessary_string_interpolations, sort_child_properties_last, duplicate_ignore, unnecessary_string_escapes

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo/models/usermodels.dart';


class User extends StatelessWidget{
  List<Modle>database=[
    Modle(id: 1, name: "Ahmed", phone: "432432"),
    Modle(id: 2, name: "noor", phone: "3424"),
    Modle(id: 3, name: "Ali", phone: "523532"),
    Modle(id: 4, name: "Nader", phone: "41421"),
    Modle(id: 5, name: "Karam", phone: "51423"),
    Modle(id: 6, name: "Hassan", phone: "421312"),
    Modle(id: 1, name: "Ahmed", phone: "432432"),
    Modle(id: 2, name: "noor", phone: "3424"),
    Modle(id: 3, name: "Ali", phone: "523532"),
    Modle(id: 4, name: "Nader", phone: "41421"),
    Modle(id: 5, name: "Karam", phone: "51423"),
    Modle(id: 6, name: "Hassan", phone: "421312"),
    Modle(id: 1, name: "Ahmed", phone: "432432"),
    Modle(id: 2, name: "noor", phone: "3424"),
    Modle(id: 3, name: "Ali", phone: "523532"),
    Modle(id: 4, name: "Nader", phone: "41421"),
    Modle(id: 5, name: "Karam", phone: "51423"),
    Modle(id: 6, name: "Hassan", phone: "421312"),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Phone",
          style:TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            shadows: List.filled(2,Shadow(color: Colors.amber,blurRadius: 20))
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder:(context,index)=>Userlist(database[index]) , 
              separatorBuilder:(context,index)=>Container(
                color: Colors.grey[300],
                height: 2,
              ) , 
              itemCount: 15
              ),
          ],
        ),
      ),
    );
  
  }
  
  Widget Userlist(Modle userdata)=>Padding(
    padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(radius: 20,backgroundColor: Colors.black,child: Text("${userdata.id}",style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),),),
          SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("${userdata.name}",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0) ,fontWeight: FontWeight.bold),),
                Text("${userdata.phone}",style: TextStyle(color: Colors.grey ),),
              ],
            ),
          )
        ],
      ),
    );
          
}