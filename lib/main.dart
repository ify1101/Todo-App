import 'package:flutter/material.dart';
import 'package:crud_app/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';



void main() async {
  //init flutter
 await Hive.initFlutter();
 //open a box
 var box = await Hive.openBox('my box');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow)
    );


  }
}

