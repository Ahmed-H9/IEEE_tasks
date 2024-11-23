// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, use_key_in_widget_constructors, file_names, unused_import, sort_child_properties_last,prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable,non_constant_identifier_names, unnecessary_string_interpolations, sort_child_properties_last, duplicate_ignore, unnecessary_string_escapes, camel_case_types, empty_catches, body_might_complete_normally_catch_error, unused_local_variable, unused_label, avoid_types_as_parameter_names, unrelated_type_equality_checks, prefer_is_empty, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, unused_element
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:todo/component/component.dart';

class Calcolator_On_My_Own extends StatelessWidget {
  const Calcolator_On_My_Own({super.key});

  @override
  Widget build(BuildContext context) {

    String result='';
    int Index_for_last_letter=-1;
    int Index_for_plus_And_minus=0;
    var resultsController=TextEditingController();


    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding:EdgeInsetsDirectional.all(15),
              child: textEntry(
              controller: resultsController, preicon: Icon(null), labeltext: Text(''),
            ),
          ),
          
          Row(
            children: [
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text="";
                Index_for_last_letter=-1;
              },
              label: "AC",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                print(resultsController.text[Index_for_last_letter]);
                result=resultsController.text;
                if(result[Index_for_last_letter]!='+'&&result[Index_for_last_letter]!='-') {
                  print("is always here");
                  resultsController.text+='+';
                }
                else if(resultsController.text[Index_for_last_letter]=='+'){
                  // result[Index_for_last_letter]=='';
                  resultsController.text[Index_for_last_letter]=='y';
                  resultsController.text+="-";
                }
                else{
                  print("way neggia");
                  resultsController.text[Index_for_last_letter]=='+';
                }
                Index_for_last_letter++;

              },
              label: "+/-",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){resultsController.text+='%';},
              label: "%",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){resultsController.text+='/';},
              label: "/",
              Text_Color: Colors.white,
              Circle_Color: const Color.fromARGB(255, 138, 126, 18)
            ),
          ),


            ],
          ),
          Row(
            children: [
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                Index_for_last_letter++;
                resultsController.text+='7';
              },
              label: "7",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              
              ontap: (){
                resultsController.text+='8';
                Index_for_last_letter++;
              },
              label: "8",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text+='9';
                Index_for_last_letter++;
              },
              label: "9",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text+='x';
                Index_for_last_letter++;
              },
              label: "X",
              Text_Color: Colors.white,
              Circle_Color: const Color.fromARGB(255, 138, 126, 18)
            ),
          ),
            ],
          ),
          Row(
            children: [
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text+='4';
                Index_for_last_letter++;
              },
              label: "4",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text+='5';
                Index_for_last_letter++;
              },
              label: "5",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text+='6';
                Index_for_last_letter++;

                
              },
              label: "6",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text+='-';
                Index_for_last_letter++;
              },
              label: "-",
              Text_Color: Colors.white,
              Circle_Color: const Color.fromARGB(255, 138, 126, 18)
            ),
          ),
            ],
          ),
          Row(
            children: [
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text+='1';
                Index_for_last_letter++;

              },
              label: "1",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text+='2';
                Index_for_last_letter++;

                
              },
              label: "2",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text+='3';
                Index_for_last_letter++;

              },
              label: "3",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){
                resultsController.text+='+';
                Index_for_last_letter++;

              
              },
              label: "+",
              Text_Color: Colors.white,
              Circle_Color: const Color.fromARGB(255, 138, 126, 18)
            ),
          ),
            ],
          ),
          Row(
            children: [
          Expanded(
            flex: 2,
            child: CalculatorBottom(
              padding: 25,
              width: 150,
              alignmentText: AlignmentDirectional.centerStart,
              ontap: (){
                resultsController.text+='0';
                Index_for_last_letter++;

              },
              label: "0",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){resultsController.text+='.';},
              label: ".",
              Text_Color: Colors.black,
              Circle_Color: Color.fromARGB(255, 147, 147, 147)
            ),
          ),
          Expanded(
            child: CalculatorBottom(
              ontap: (){},
              label: "=",
              Text_Color: Colors.white,
              Circle_Color: const Color.fromARGB(255, 138, 126, 18)
            ),
          ),


            ],
          ),




        ],
      ),
    );
  }
}