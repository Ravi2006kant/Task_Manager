import 'package:flutter/material.dart';
import 'package:task_manager/task_list.dart';


class Task {
  String title;
  String description;
  DateTime date;

  Task({
    required this.title,
    required this.description,
    required this.date,
  });
}


class AddList extends StatefulWidget{
  const AddList({super.key});

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {
   final taskController = TextEditingController();
  final descController = TextEditingController();

  DateTime? selectedDate;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Center(child: Text("Add Task",style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.w900,color: Colors.white))),
          iconTheme:IconThemeData(color: Colors.white), //change the arrow color
          
        ),
      body: 
      


SingleChildScrollView(
        child: Column(
          children: [

            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 100,
                  horizontal: 20,
                ),

                child: Card(
                  elevation: 5,
                  color: Colors.pink.shade200,

                  child: Padding(
                    padding: const EdgeInsets.all(15),

                    child: Column(
                      children: [

                        const SizedBox(height: 30),

                        // TASK FIELD
                        TextField(
                          controller: taskController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.name,

                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,

                            labelText: "Add Task",
                            labelStyle:
                                const TextStyle(color: Colors.pink),

                            prefixIcon: const Icon(
                              Icons.add_circle_sharp,
                              color: Colors.pink,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(20),

                              borderSide: const BorderSide(
                                color: Colors.pink,
                              ),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(25),

                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        // DESCRIPTION FIELD
                        TextField(
                          controller: descController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.multiline,
                          maxLines: 3,

                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,

                            labelText: "Description",
                            labelStyle:
                                const TextStyle(color: Colors.pink),

                            prefixIcon: const Icon(
                              Icons.description_rounded,
                              color: Colors.pink,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(20),

                              borderSide: const BorderSide(
                                color: Colors.pink,
                              ),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(25),

                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        // DATE PICKER BUTTON
                        ElevatedButton(
                          onPressed: () async {

                            DateTime? pickedDate =
                                await showDatePicker(
                              context: context,
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2030),
                            );

                            if (pickedDate != null) {
                              setState(() {
                                selectedDate = pickedDate;
                              });
                            }
                          },

                          child: const Text("Choose Date"),
                        ),

                        const SizedBox(height: 15),

                        // SHOW SELECTED DATE
                        Text(
                          selectedDate == null
                              ? "No Date Selected"
                              : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",

                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 40),

                        // SUBMIT BUTTON
                        ElevatedButton(
  onPressed: () {

    if (taskController.text.isEmpty ||
        descController.text.isEmpty ||
        selectedDate == null) {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill all fields"),
        ),
      );

      return;
    }

    final task = Task(
      title: taskController.text,
      description: descController.text,
      date: selectedDate!,
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskList(task: task),
      ),
    );
  },

  child: const Text("Submit"),
),

                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    
       
      
    );
    
  }
}
  