// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, use_key_in_widget_constructors, file_names, unused_import, sort_child_properties_last,prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable,non_constant_identifier_names, unnecessary_string_interpolations, sort_child_properties_last, duplicate_ignore, unnecessary_string_escapes
import 'package:flutter/material.dart';

class Massenger extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        titleSpacing: 15,
        title: Row(
          children: [
            CircleAvatar(backgroundColor: Colors.grey[500],child:Icon(Icons.density_medium) ,radius: 20,),
            SizedBox(width: 10,),
            Text(
              "Chats",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              
              ),
          ],
        ),
        actions: [
          CircleAvatar(backgroundColor: Colors.grey[500],child: Icon(Icons.edit),radius: 19,),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[500],borderRadius: BorderRadiusDirectional.circular(15) ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.search_sharp),
                        SizedBox(width: 10,),
                        Text("Search",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              child: ListView.separated(
                padding: EdgeInsetsDirectional.only(start: 15),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ForStories(),
                itemCount: 14,
                separatorBuilder: (context, index) =>SizedBox(width: 22,) ,
              ),
            ),
            SizedBox(height: 25,),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsetsDirectional.all(15),
              itemBuilder: (context, index) => ForMasseges(),
              separatorBuilder: (context,index)=>SizedBox(height: 20,),
              itemCount: 20,
              ),
          ]
        ),
      ),
    );
    
  }

  Widget ForStories()=>Container(
    width: 50,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg'),radius: 25,),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 4,end: 4),
              child: CircleAvatar(backgroundColor: Colors.black,radius: 7.5),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(backgroundColor: Colors.red,radius: 6,),
            ),
          ],
        ),
        
        SizedBox(height: 5,),
        Text("Eman naser dfececec",maxLines: 2,style: TextStyle(overflow: TextOverflow.ellipsis,fontWeight: FontWeight.bold,color: Colors.white)),
      ],
    ),
  );
  
  Widget ForMasseges()=>Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg'),radius: 30,),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 4,end: 4),
            child: CircleAvatar(backgroundColor: Colors.black,radius: 7.5),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(backgroundColor: Colors.red,radius: 6,),
          ),
        ],
      ),
      SizedBox(width: 15,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name of suspicts Name of suspictsName of suspictsName of suspictsName of suspictsName of suspicts",maxLines: 1,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: Colors.white),),
            Row(
              children: [
                Expanded(child: Text("Name of suspicts Name of suspictsName Name of suspicts Name of suspict of suspictsName of suspictsName of suspicts",maxLines: 2,style: TextStyle(fontSize: 11,overflow: TextOverflow.ellipsis,color: Colors.grey),)),
                Text("20/7",maxLines: 2,style: TextStyle(fontSize: 11,overflow: TextOverflow.ellipsis,color: Colors.grey),)
              ],
            ),
          ],
        ),
      ),
    ],
  );
                  

}
// to make list follow this steps:
// -------=----------------=------
// 1: make funtion for item.  this step we will make it in future with database
// 2: make list for itmes.    dot't forgot {(context,index)=> } <== i will understant this shit why soon
// 3: connect funtion with list.