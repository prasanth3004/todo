import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Todocard extends StatefulWidget {
  const Todocard({super.key});

  @override
  State<Todocard> createState() => _TodocardState();
}

class _TodocardState extends State<Todocard> {
    var box=Hive.box('testbox');
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: [
          Checkbox(
            value: true,
            onChanged: (value) {
              ;
            },
          ),
          Text(box.get('username'))
          
        ],
      ),
    );
  }
}
