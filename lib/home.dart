import 'package:adroid_study/frame/bodyFrame.dart';
import 'package:adroid_study/server.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  List<Map<String,String>> datas = [];
  final BodyFrame _bodyFrame = BodyFrame(); // BodyFrame 인스턴스 생성

  @override
  void initState() {
    super.initState();
    datas = [
      {"processSegment": "프레스", "processName": "공정", "processCode": "3TV26HO91O_process_1"}
      ,
      {"processName": "FEEDER", "processCode": "3TV26HO91O_process_13"}
      ,
      {"processName": "레이저", "processCode": "3TV26HO91O_process_15"}
      ,
      {"processName": "G2/SPOT", "processCode": "3TV26HO91O_process_19"}
      ,
      {"processName": "BRKT(조립/용접)", "processCode": "3TV26HO91O_process_20"}
      ,
      {"processName": "원박스", "processCode": "3TV26HO91O_process_21"}
      ,
      {"processName": "EU/GPF", "processCode": "3TV26HO91O_process_22"}
      ,
      {"processName": "시리얼", "processCode": "3TV26HO91O_process_23"}
      ,
      {"processName": "프레스", "processCode": "3TV26HO91O_process_24"}
      ,
      {"processName": "400T 프레스", "processCode": "3TV26HO91O_process_25"}
    ];
  }
  PreferredSizeWidget _appbarWidget(BuildContext context)
  {
    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Color(0xffcdf860),
      title: GestureDetector(
        onTap: (){
          print("click");
        },
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                server.getReq(); // server.getReq() 메서드를 호출하는 부분
              },
              icon: Icon(
                Icons.settings_suggest_outlined, // 아이콘은 Icons.settings_suggest_outlined로 설정
                color: Color(0xff0039a3), // 색상 설정
                size: screenWidth * 0.065, // 크기 설정
              ),
            ),
            SizedBox(width : screenWidth*0.02),
            Text("ADMIN MODE",
              style: TextStyle(color: Color(0xff0039a3), fontSize: screenWidth * 0.045, ),
            )
          ],
        ),
      ),
      elevation: 1,
      actions: [
        Row(
          children: [
            Container(
              width: screenWidth*0.06, // 이미지의 너비와 높이 설정
              height: screenWidth*0.06,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/test_images.jpg',)
                  ,)
                ,)
              ,),
            SizedBox(width: screenWidth*0.02),
            Text("로그인한사람",style: TextStyle(color: Color(0xff0039a3), fontSize: screenWidth * 0.03, fontWeight: FontWeight.bold )),
            SizedBox(width: screenWidth*0.02),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // commitTest
    return Scaffold(
      appBar: _appbarWidget(context),
      body: _bodyFrame.bodyWidget(context, datas),
      //bottomNavigationBar: Container(),
    );
  }
}

