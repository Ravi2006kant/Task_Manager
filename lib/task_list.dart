import 'package:flutter/material.dart';
import 'package:task_manager/add_list.dart';

class TaskList extends StatefulWidget{
  const TaskList({super.key});

  @override
  State<StatefulWidget> createState() => _TaskList();
}

class _TaskList extends State<TaskList>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Task List",style: TextStyle(fontSize: 25,
      color: Colors.white,fontWeight: FontWeight.w800),)),backgroundColor: Colors.pink,),
      body: Column(
        children: [
          Center(
            child: Card(
              child: Column(
                children: [
                  TextField(),
                  TextField(maxLines: 3,),
                  OutlinedButton(onPressed: () async {
                       DateTime? dateTime = await showDatePicker(context: context ,
                        firstDate: DateTime(2020), lastDate: DateTime(2025));
                  }, child: Text("Choose Date & Time")),
                 
                  ElevatedButton(onPressed: (){
                    
                    Navigator.push(context,MaterialPageRoute(builder: (context) => AddList()));
                  }, child: Text("Submit"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}