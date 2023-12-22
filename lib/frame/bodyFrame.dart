import 'package:adroid_study/util/server.dart';
import 'package:flutter/material.dart';
class WikiItem {
  final String _title;
  final String _description;

  WikiItem(this._title, this._description);

  @override
  String toString() {
    return 'Item: { title: $_title, description: $_description }';
  }
}
class BodyFrame extends StatefulWidget {

  @override
  _BodyFrameState createState() => _BodyFrameState();
}

class _BodyFrameState extends State<BodyFrame> {
  List<WikiItem> itemList = []; // 데이터 리스트
  int currentPage = 1;
  late Map<String, dynamic> jsonDataMap;
  int totalPage = 0;
  @override
  void initState() {
    super.initState();
    _fetchData(currentPage); // 처음에 fetchData 함수 호출
  }

  Future<void> _fetchData(int pageNumber) async {
    try {
      var response = await server.getReq(pageNumber, 10, "@");

      jsonDataMap = response.data;
      List<dynamic> rowList = jsonDataMap['data']['row'];

      totalPage = jsonDataMap['data']['total_page'];
      setState(() {
        itemList = rowList.map((item) {
          String date = item['registrationDate'].toString();
          String formattedDate = date.length >= 11 ? date.substring(0, 11) : date;
          return WikiItem(item['wikiTitle'].toString(), formattedDate);
        }).toList();
            print(itemList);
      });
    } catch (e) {
      print("Error occurred: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: Column(
            children: [
              _buildTitle(context),
              _buildSubTitle(context),
              _buildBody(context), // itemList를 body에 전달
              _buildButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    int maxButtonsToShow = 5;
    int startPage = 1;
    int endPage = totalPage > maxButtonsToShow ? maxButtonsToShow : totalPage;

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
                _fetchData(i);
              },
              child: Text('$i'),
            ),
        ],
      ),
    );
  }
  Widget _buildTitle(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(top: screenWidth * 0.03, bottom: screenWidth * 0.03),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: const Row(
        children: [
          Text("wiki 알람", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildSubTitle(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(screenWidth * 0.03),
      color: Color(0xfff2f5fa),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("제목", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("작성 시간", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Container(
        padding: EdgeInsets.all(screenWidth * 0.03),
        child: ListView.separated(
          itemBuilder: (BuildContext _context, int index) {
            return Container(
              padding: EdgeInsets.all(screenWidth * 0.01),
              child: Row(
                children: [
                  Container(
                  width: screenWidth*0.56,
                    height: screenWidth*0.076,
                    child: Text(
                      itemList[index]._title,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: screenWidth*0.02,),
                  SizedBox(
                    width: screenWidth*0.18,
                    child: Text(
                      itemList[index]._description,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: itemList.length,
          separatorBuilder: (BuildContext _context, int index) {
            return Container();
          },
        ),
      ),
    );
  }
}
