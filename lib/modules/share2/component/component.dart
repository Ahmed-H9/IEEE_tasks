// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, use_key_in_widget_constructors, file_names, unused_import, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names, unnecessary_string_interpolations, camel_case_types
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/modules/share2/component/constant.dart';

typedef voidfunction = void Function();
typedef validate<T> = String? Function(T? value);







Widget defultFormFeild(
    // Icon? suffix,
    // Function ontap,
  {
    required String label,
    required TextInputType type,
    required IconData prefix,
    required TextEditingController controller,
    voidfunction? ontap,
    validate? validate ,
    String? hint,
  }
  ){
  return Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextFormField(
          
          validator:validate ,
          decoration: InputDecoration(
            fillColor: Colors.grey[500],
            border:OutlineInputBorder(),
            label: Text(label),
            prefixIcon: Icon(prefix),
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.black
            ),
          ),
          keyboardType: type,
          controller: controller,
          onTap: ontap,
        ),
      );
}

Widget Feildup({required String text,}){
  return 
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue,Colors.green]),
        color: Color.fromARGB(255, 52, 158, 244),
        borderRadius: BorderRadiusDirectional.only(
          topEnd:Radius.circular(15),
          topStart: Radius.circular(15),
        ),
      ),
      width: double.infinity,
      height: 40,
      alignment: Alignment.center ,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,

        ),
      ),
    );             
}
Widget feilddown({required IconData icon,}){
  return 
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.only(
          bottomStart:Radius.circular(15),
          bottomEnd: Radius.circular(15),
        ),
        boxShadow: List.filled(1,BoxShadow(blurRadius: .3))
      ),
      
      width: double.infinity,
      height: 70,
      alignment: Alignment.center ,
      child: Icon(icon,color: Colors.blue[300],),
    );      
}

Widget CalculatorBottom(
  {
    required String label,
    double height=60,
    double width=60,
    Color Circle_Color=const Color.fromARGB(255, 94, 93, 93),
    Color Text_Color=Colors.white,
    required voidfunction ontap,
    AlignmentDirectional alignmentText=AlignmentDirectional.center,
    double padding=0.0,
  }
){
  return IconButton(
    onPressed: ontap,
    icon:Container(
      alignment: alignmentText,
      width: width,
      height: height,
      
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(30),
        color: Circle_Color,
      ),
      child: Padding(
        padding:EdgeInsetsDirectional.only(start:padding) ,
        child:Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color:Text_Color ,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    )
  );

}


