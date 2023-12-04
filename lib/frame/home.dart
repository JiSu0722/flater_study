import 'package:adroid_study/frame/appbarWidget.dart';
import 'package:adroid_study/frame/bodyFrame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  late Map<String, dynamic> jsonDataMap;
  int totalPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // commitTest
    return Scaffold(
      appBar: AppbarWidget(),
      body: BodyFrame(),
    );
  }
}

