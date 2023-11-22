import 'package:adroid_study/home.dart';
import 'package:adroid_study/rabbit.dart';
import 'package:adroid_study/staeful_sample_widget.dart';
import 'package:adroid_study/staeless_sample_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Home(),
    );
  }
}



