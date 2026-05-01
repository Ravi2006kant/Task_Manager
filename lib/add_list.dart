import 'package:flutter/material.dart';

class AddList extends StatefulWidget{
  const AddList({super.key});

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Center(child: Text("Add Task",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.white))),
          iconTheme:IconThemeData(color: Colors.white), //change the arrow color
          
        ),
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Card(
                elevation: 2,
                child: Column(
                  children: [
                    TextField(
                      cursorColor: Colors.pink,
                       keyboardType: TextInputType.name,
                       minLines: 1,

                       
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.pink)
                        )
                      ),
                    ),


SizedBox(height: 50,),


                    TextField(maxLines: 3,),

  SizedBox(height: 50,),
                  
                    OutlinedButton(onPressed: () async {
                         DateTime? dateTime = await showDatePicker(context: context ,
                          firstDate: DateTime(2020), lastDate: DateTime(2025));
                    }, child: Text("Choose Date & Time")),

                   SizedBox(height: 50,),
                    ElevatedButton(onPressed: (){
                      
                      Navigator.push(context,MaterialPageRoute(builder: (context) => AddList()));
                    }, child: Text("Submit"))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      
    );
    
  }
}
  

