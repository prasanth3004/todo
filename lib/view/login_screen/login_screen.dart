

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

TextEditingController usernamecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: usernamecontroller,
                decoration: InputDecoration(border: OutlineInputBorder(),hintText:'username' ),),
              SizedBox(height: 20,),
              TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'password' ),),
              SizedBox(height: 20,),

              SizedBox(width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {},
                    child: Text('Login')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
