// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, use_key_in_widget_constructors, file_names, unused_import, sort_child_properties_last,prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable,non_constant_identifier_names, unnecessary_string_interpolations, sort_child_properties_last, duplicate_ignore, unnecessary_string_escapes, camel_case_types


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo/modules/bmi_result/BMI_RESULT.dart';

class BMI extends StatefulWidget {
  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  int res=0;
  int height=180;
  bool is_Male=true;
  int age_Counter=20;
  int Body_Weight=70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 33, 68),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 43, 33, 68),
        centerTitle: true,
        title: Text(
          "BMI Calculator...",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          is_Male=true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: is_Male? Colors.blue : Colors.grey[500],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 75,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          is_Male=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:is_Male? Colors.grey[500]:Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 75,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[500],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "$height",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height.roundToDouble(),
                      max: 240,
                      min: 80,
                      onChanged: (Value) {
                        setState(() {
                          height=Value.round() ;
                        });
                        
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "$age_Counter",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: Text("age--"),
                                mini: true,
                                shape: CircleBorder(),
                                backgroundColor:
                                    Color.fromARGB(255, 116, 10, 132),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    age_Counter--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                heroTag: Text("age++"),
                                mini: true,
                                shape: CircleBorder(),
                                backgroundColor:
                                    Color.fromARGB(255, 116, 10, 132),
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    age_Counter++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "$Body_Weight",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: Text("weight--"),
                                mini: true,
                                shape: CircleBorder(),
                                backgroundColor:
                                    Color.fromARGB(255, 116, 10, 132),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    Body_Weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                heroTag: Text("weight++"),
                                mini: true,
                                shape: CircleBorder(),
                                backgroundColor:
                                    Color.fromARGB(255, 116, 10, 132),
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    Body_Weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            width: double.infinity,
            child: MaterialButton(
              color: Color.fromARGB(255, 103, 10, 121),
              child: Text(
                "CALCULATE",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              onPressed: () {
                res=(Body_Weight/pow((height/100),2)).round();
                Navigator.push(context, MaterialPageRoute(builder:(context)=>BMI_RESULT_SCREEN(age: age_Counter,gender: is_Male,result: res,) ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

// problems:
// 1: the pointer in slider don't move    solved
// 2: connect + and -  with his own number    solved
// 3: when I choose gender the color of background didn't change   solved

// DONE 
