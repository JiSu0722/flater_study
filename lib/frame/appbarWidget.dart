import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Color(0xffcdf860),
      title: GestureDetector(
        onTap: () {
          print("click");
        },
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_suggest_outlined, // 아이콘은 Icons.settings_suggest_outlined로 설정
                color: Color(0xff0039a3), // 색상 설정
                size: screenWidth * 0.065, // 크기 설정
              ),
            ),
            SizedBox(width: screenWidth * 0.02),
            Text(
              "ADMIN MODE",
              style: TextStyle(
                color: Color(0xff0039a3),
                fontSize: screenWidth * 0.045,
              ),
            )
          ],
        ),
      ),
      elevation: 1,
      actions: [
        Row(
          children: [
            Container(
              width: screenWidth * 0.06, // 이미지의 너비와 높이 설정
              height: screenWidth * 0.06,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/test_images.jpg',
                  ),
                ),
              ),
            ),
            SizedBox(width: screenWidth * 0.02),
            Text(
              "로그인한사람",
              style: TextStyle(
                color: Color(0xff0039a3),
                fontSize: screenWidth * 0.03,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: screenWidth * 0.02),
          ],
        ),
      ],
    );
  }
}
