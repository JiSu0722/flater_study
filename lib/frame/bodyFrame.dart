import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyFrame{

  Widget title(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(

      padding: EdgeInsets.only(top:screenWidth*0.03,bottom:screenWidth*0.03),

      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ), // 원하는 만큼의 radius 값 설정
      ),
      child: const Row(
        children: [
          Text("예지보전 알람", style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
  Widget subTitle(BuildContext context)
  {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(screenWidth*0.03),
      color: Color(0xfff2f5fa),
      child:  const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // 왼쪽과 오른쪽으로 정렬
        children: [
          Text("알림명",style: TextStyle(fontWeight: FontWeight.bold)),
          Text("발생 시간",style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget body(BuildContext context,List<Map<String,String>> datas) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Container(
        padding:  EdgeInsets.all(screenWidth*0.03),
        child: ListView.separated(
          itemBuilder: (BuildContext _context, int index) {
            return Container(
              padding:  EdgeInsets.all(screenWidth*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // 왼쪽과 오른쪽으로 정렬
                children: [
                  Text(datas[index]["processName"]!),
                  Text(datas[index]["processCode"]!,),
                ],
              ),
            );
          },
          itemCount: 10,
          separatorBuilder: (BuildContext _context, int index) {
            return Container(
            );
          },
        ),
      ),
    );
  }

  Widget bodyWidget(BuildContext context, List<Map<String,String>> datas) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        width: screenWidth * 0.9,
        height: screenWidth * 1.41,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(1, 3),
              ),
            ],
          ),
          padding: EdgeInsets.all(screenWidth*0.03),
          child: Column(
            children: [
              title(context),
              subTitle(context),
              body(context,datas),
            ],
          ),
        ),
      ),
    );
  }
}