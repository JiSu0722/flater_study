import 'package:adroid_study/frame/bodyFrame.dart';
import 'package:adroid_study/home.dart';
import 'package:adroid_study/server.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNumberWidget extends StatefulWidget {
  final int totalPage;

  PageNumberWidget(this.totalPage);

  @override
  _PageNumberWidgetState createState() => _PageNumberWidgetState();
}

class _PageNumberWidgetState extends State<PageNumberWidget> {
  int currentPage = 1;
  List<Item> itemList = []; // 전역 변수로 사용할 데이터 리스트

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    int maxButtonsToShow = 5;
    int startPage = 1;
    int endPage = widget.totalPage > maxButtonsToShow ? maxButtonsToShow : widget.totalPage;

    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = startPage; i <= endPage; i++)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: currentPage == i ? Colors.blue : Color(0xfff2f5fa), // 선택된 버튼만 파란색, 나머지는 투명 배경
                onPrimary:  currentPage == i ? Colors.white : Color(0xff858da8), // 텍스트 색상 변경
                minimumSize: Size(screenWidth * 0.12, screenWidth * 0.07), // 버튼의 최소 크기 설정
              ),
              onPressed: () {
                setState(() {
                  currentPage = i;
                });
                fetchData(i);
              },
              child: Text('$i'),
            ),
        ],
      ),
    );
  }

  Future<List<Item>> fetchData(int pageNumber) async {
    try {
      Response<dynamic> response = await server.getReq(currentPage, 10, "@");
      Map<String, dynamic> jsonDataMap = response.data;
      List<dynamic> rowList = jsonDataMap['data']['row'];

      List<Item> updatedItemList = rowList.map((item) {
        String date = item['registrationDate'].toString();
        String formattedDate = date.length >= 11 ? date.substring(0, 11) : date;
        return Item(item['wikiTitle'].toString(), formattedDate);
      }).toList();

      setState(() {
        itemList = updatedItemList;
      });

      return itemList;
    } catch (e) {
      print("Error occurred: $e");
    }
  }
}
