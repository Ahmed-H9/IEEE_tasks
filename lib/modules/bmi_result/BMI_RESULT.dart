// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, use_key_in_widget_constructors, file_names, unused_import, sort_child_properties_last,prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable,non_constant_identifier_names, unnecessary_string_interpolations, sort_child_properties_last, duplicate_ignore, unnecessary_string_escapes, camel_case_types, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

class BMI_RESULT_SCREEN extends StatelessWidget {
  final bool gender;
  final int result;
  final int age;

  BMI_RESULT_SCREEN({required this.gender,required this.age,required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Gender: ${gender? 'Male' :'female'} ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text("Result: $result",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text("Age: $age",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}