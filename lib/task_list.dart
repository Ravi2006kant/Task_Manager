import 'package:flutter/material.dart';
import 'package:task_manager/add_list.dart';

class TaskList extends StatelessWidget{
 final Task task;

  const TaskList({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pink,

        title: const Text(
          "Task List",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Card(
          elevation: 5,

          child: ListTile(

            leading: const CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(
                Icons.task,
                color: Colors.white,
              ),
            ),

            title: Text(task.title),

            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(task.description),

                const SizedBox(height: 5),

                Text(
                  "${task.date.day}/${task.date.month}/${task.date.year}",
                ),
              ],
            ),

            trailing: const Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
  }
