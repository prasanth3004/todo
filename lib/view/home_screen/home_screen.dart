import 'package:flutter/material.dart';
import 'package:todo/view/add_screen/add_screen.dart';
import 'package:todo/view/home_screen/widget/todocard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        backgroundColor: Colors.blue.withOpacity(.5),
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Todocard(),
        ),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 10,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddScreen(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
