import 'package:flutter/material.dart';
import 'package:task_manager/add_list.dart';
import 'package:task_manager/introScreen.dart';
import 'package:task_manager/task_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      
      home: AddList(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
   
    
return Scaffold(
      appBar: AppBar(
        
        
        backgroundColor: Colors.pink,
       title: Row(children: [Icon(Icons.dashboard_rounded, color:Colors.white,size: 30,),SizedBox(width: 5,),
       Text('Dashboard',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold))],),
        // title:  ,
      ),
      body: Center(
        child: Column(
          children: [

            SizedBox(height: 25,),

            Text("WELCOME BUDDY !!",style: TextStyle(fontSize: 30,color: Colors.pink,fontWeight: FontWeight.w600),),
            SizedBox(height: 150,),

            Center(
              child: InkWell(
                child: Card(elevation: 2,
                color: Colors.pink,
                child:Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                  child: Text("View Task",style:TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w600,),),
                )),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TaskList()));
                },
                
              ),
            ),

            SizedBox(height: 50,),
        
            Center(
              child: InkWell(
                child: Card(elevation: 2,
                color: Colors.pink,
                child:Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55,vertical: 10),
                  child: Text("Add Task",style:TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,),),
                )),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddList()));
                },
              ),
            ),
        
        
            
          
          ],
        ),
      )
    );

    
  }
}

