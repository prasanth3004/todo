import 'package:flutter/material.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/home_screen/home_screen.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  // var box = await Hive.openBox('testBox');
   await Hive.openBox<String>("tasksBox");
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}