import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_manager/loginScreen.dart';


class Introscreen extends StatefulWidget{
  const Introscreen({super.key});

  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> {
   @override
   void initState(){
    super.initState();
  
    Timer(Duration(seconds: 2), (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginscreen()));
    });
   }
   
    @override
      Widget build(BuildContext context) {
      
      return Scaffold(     
        backgroundColor: Colors.pink,
      body: 
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [          
           Icon(Icons.bubble_chart_sharp,color: Colors.white,size: 100,)
          ,
              Container(
              color: Colors.pink,  
              child: Center(
                child: Text("Task Manager",style: TextStyle(color: Colors.white,fontSize: 40,
                  fontWeight: FontWeight.bold,)),
              ),     
           ),
         ],
       ),
    );
  }
     }
     
      