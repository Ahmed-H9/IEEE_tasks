// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, use_key_in_widget_constructors, file_names, unused_import, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names, unnecessary_string_interpolations, curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';
import 'package:todo/component/component.dart';

class LOGIN extends StatefulWidget {

  @override
  State<LOGIN> createState() => _LOGINState();
}

class _LOGINState extends State<LOGIN> {
var email=TextEditingController();
var Pass=TextEditingController();
var keyforvalidate=GlobalKey<FormState>();
bool isView=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body:SingleChildScrollView(
          child:Padding(
          padding: EdgeInsets.all(15),
            child:Form(
              key: keyforvalidate,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value==''){
                        return "The password is too short";
                      }                        
                      return null;
                    },
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      label: Text("Email",),
                    ),
                    keyboardType:TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    validator: (value) {
                      if(value==''){
                        return "The password is too short";
                      }                        
                      return null;
                    },
                    controller: Pass,
                    obscureText: isView,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (isView) {
                              isView=false;
                            }
                            else isView=true;
                          });
                        },
                        icon:Icon(Icons.remove_red_eye_rounded),
                        ),
                      label: Text("Password"),
                    ),
                    keyboardType:TextInputType.emailAddress,
                    ),
                  SizedBox(height: 15,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadiusDirectional.circular(15),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        if(keyforvalidate.currentState!.validate()){
                          print("Hi. the email is: ${email.text}");
                          print("Hi. the password is: ${Pass.text}");
                        email.text="";
                        Pass.text="";
                        }
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      )
                    ),
                  )
                ],
              ),
            )
          )
      )
    );

    
  }
}
