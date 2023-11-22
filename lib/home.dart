import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String,String>> datas = [];

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
            Icon(Icons.settings_suggest_outlined, color : Color(0xff0039a3), size: screenWidth * 0.065),
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
  Widget _title(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 1,
      height: screenWidth * 0.08,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ), // 원하는 만큼의 radius 값 설정
      ),
      child: Row(
        children: [
          Text("예지보전 알람", style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (BuildContext _context, int index) {
          return Container(
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(datas[index]["processName"]!),
                      Text(datas[index]["processCode"]!),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 10,
        separatorBuilder: (BuildContext _context, int index) {
          return Container(
            height: 1,
            color: Colors.black.withOpacity(0.5),
          );
        },
      ),
    );
  }

  Widget _bodyWidget(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xfff2f5fa),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(1, 3),
            ),
          ],
        ),
        width: screenWidth * 0.9,
        height: screenWidth * 1.41,
        child: Column(
          children: [
            _title(context),
            _body(context),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // commitTest
    return Scaffold(
      appBar: _appbarWidget(context),
      body: _bodyWidget(context),
      //bottomNavigationBar: Container(),
    );
  }
}
