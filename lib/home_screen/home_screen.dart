import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


class HomeScreen extends StatefulWidget {
   
   HomeScreen({super.key});
  tasksBox = Hive.box("tasksBox");
 
  
  
  }
 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
      TextEditingController _textFieldController = TextEditingController();
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ToDo',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.blue,
        ),
        body: ValueListenableBuilder(
        valueListenable: tasksBox.listenable(),
        builder: (BuildContext context, Box<String> value, child) {
          if (tasksBox.length > 0) {
            return ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: tasksBox.length,
              itemBuilder: (context, index) {
                print(tasksBox.getAt(index));
                return ListTile(
                  title: Text(tasksBox.getAt(index)!),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => onDeleteTask(index),
                  ),
                );
              },
            );
          }
        },
        // body: ValueListenableBuilder(valueListenable: ,),
        
      ),
    ));

  }

  void onDeleteTask(int index) {
    tasksBox.deleteAt(index);
    return;

  }
}
