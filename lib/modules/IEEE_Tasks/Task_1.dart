// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, use_key_in_widget_constructors, file_names, unused_import, sort_child_properties_last,prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable,non_constant_identifier_names, unnecessary_string_interpolations, sort_child_properties_last, duplicate_ignore, unnecessary_string_escapes, camel_case_types, empty_catches, body_might_complete_normally_catch_error, unused_local_variable, unused_label, avoid_types_as_parameter_names, unrelated_type_equality_checks, prefer_is_empty, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, unused_element
import 'package:flutter/material.dart';

class IEEE extends StatelessWidget {
  const IEEE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 83, 145, 144),
        title: Text(
          "Hi IEEE , I'm Ahmed Hassan",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.all(15),
        child: Column(
          children: [
            row_of_the_photo(),
            SizedBox(height: 6,),
            row_of_the_photo(),
            SizedBox(height: 6,),
            row_of_the_photo(),
          ],
        ),
      ),
    );
  
  }

}
Widget the_photo(){
  return Expanded(
    child: Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.teal,
          ),
          height: 150,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(113, 46, 38, 38),
          ),
          height: 50,
        ),
        Padding(
          padding:EdgeInsetsDirectional.all(10),
          child: Text(
            "Hi everyone",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}
Widget row_of_the_photo(){
  return Row(
    children: [
      the_photo(),
      SizedBox(width: 5,),
      the_photo()
    ],
  );
}

