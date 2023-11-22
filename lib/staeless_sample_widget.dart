import 'dart:async';

import 'package:adroid_study/rabbit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatelessSampleWidget extends StatelessWidget {
  final String title;
  final Rabbit rabbit;
  StatelessSampleWidget({required this.title, required this.rabbit})
  {
    Timer.periodic(Duration(seconds: 1), (timer) {
      print(timer.tick);
      int index = timer.tick%4;
      switch(index){
        case 0:
          rabbit.updateState(RabbitState.WALK);
          break;
        case 1:
          rabbit.updateState(RabbitState.RUN);
          break;
        case 2:
          rabbit.updateState(RabbitState.SLEEP);
          break;
        case 3:
          rabbit.updateState(RabbitState.EAT);
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(title)),
        body: Container(
          child: Center(
            child: Text(rabbit.state.toString(),
              style: TextStyle(fontSize: 20),),
          ),
        ));
  }
}
