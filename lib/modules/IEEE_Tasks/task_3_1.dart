// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, use_key_in_widget_constructors, file_names, unused_import, sort_child_properties_last,prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable,non_constant_identifier_names, unnecessary_string_interpolations, sort_child_properties_last, duplicate_ignore, unnecessary_string_escapes, camel_case_types, empty_catches, body_might_complete_normally_catch_error, unused_local_variable, unused_label, avoid_types_as_parameter_names, unrelated_type_equality_checks, prefer_is_empty, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, unused_element

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IEEE3_1 extends StatefulWidget {
  const IEEE3_1({super.key});

  @override
  State<IEEE3_1> createState() => _IEEE3_1State();
}

class _IEEE3_1State extends State<IEEE3_1> {
  @override
  Widget build(BuildContext context) {
    TextEditingController User_name=TextEditingController();
    TextEditingController Passowrd=TextEditingController();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsetsDirectional.all(20),
          
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 100,),
            Text(
              "Weclcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Enter your credential to login",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            
            SizedBox(height: 50,),
            inputs(controller: User_name, Label: "user name", prefex_icon: Icons.person),
            SizedBox(height: 5,),
            inputs(controller: Passowrd, Label: "Password", prefex_icon: Icons.password,suffex_icon: Icons.lock,obscure: true),
            SizedBox(height: 5,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple[600],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.all(12),
                child: Text(
                  textAlign: TextAlign.center,
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: (){},
                  child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 12
                  ),
                )
              ),
            ),
            Expanded(
              child:Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 13,
                      color:Colors.black
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 12
                      ),
                    )
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }


  Widget inputs({required TextEditingController controller,IconData? suffex_icon,required String Label,required IconData prefex_icon,bool obscure=false} ){
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(101, 177, 105, 164),
        borderRadius: BorderRadius.circular(15)
      ),
      child: TextField(
        controller:controller,
        obscureText:obscure ,
        decoration: InputDecoration(
          prefixIcon: Icon(prefex_icon),
          label: Text(Label),
          border: InputBorder.none,
          suffixIcon:Icon(suffex_icon),
          
        ),
      ),
    );
    
  }
}