import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/view/utills/appsection.dart';


class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController taskcontroller=TextEditingController();
    TextEditingController datecontroller=TextEditingController();
    var testbox=Hive.box(Appsection.TEXTBOX);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: taskcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'task'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: datecontroller,
                decoration: InputDecoration(

                    border: OutlineInputBorder(), hintText: 'date'),
              ),SizedBox(
                height: 20),
                
              SizedBox(width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {

                     testbox.add({'task':taskcontroller.text,
                     'date':datecontroller.text});
                      //print(box.get('username'));



                    },
                    child: Text('Add')),
              )
                
                

              
            ],
          ),
        ),
      ),
    );
  }
}
