import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // 현재 시간을 가져오기
    String currentTime = TimeOfDay.now().format(context);

    // 현재 날짜 및 요일 가져오기
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    String formattedDay = DateFormat('EEEE').format(now);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffcdf860),
          title: GestureDetector(
            onTap: (){
              print("click");
            },
            child: Row(
              children: [
                Icon(Icons.settings_suggest_outlined, color : Color(0xff0039a3), size: screenWidth * 0.07),
                SizedBox(width : screenWidth*0.02),
                Text("ADMIN MODE",
                  style: TextStyle(color: Color(0xff0039a3), fontSize: screenWidth * 0.05, ),
                )
              ],
            ),
          ),
        actions: [
          Text(formattedDate + ' ' + formattedDay+"로그인한사람",style: TextStyle(color: Color(0xff0039a3), fontSize: screenWidth * 0.03, ))
        ],
      ),
    );
  }
}
