import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // 디버그 배너 표시
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 상단 배경색 투명
        elevation: 0, // 그림자 제거
        toolbarHeight: 0, // AppBar의 높이 제거
      ),
      body: Column(
        children: [
          // 상단 부분
          Container(
            color: Colors.lightGreen, // 상단 배경색
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              children: [
                Icon(
                  Icons.check_box_outlined,
                  color: Colors.black,
                  size: 28, // 아이콘 크기
                ),
                SizedBox(width: 8),
                Text(
                  'EOS ToDoList',
                  style: TextStyle(
                    fontSize: 20, // 텍스트 크기
                    color: Colors.black,
                    fontWeight: FontWeight.normal, // 글자 두께를 얇게 설정
                  ),
                ),
                Spacer(),
              ],
            ),
          ),

          // 초록색 배경 부분
          Container(
              color: Colors.lightGreen.withOpacity(0.3), // 초록색 배경에 30% 투명도
              child: Padding(
                padding: const EdgeInsets.all(25.0), // Container 내부 Padding
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // 프로필 이미지 부분
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 10,
                        ),
                        color: Colors.white, // 회색 배경
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 100, // 아이콘 크기
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10), // 프로필 이미지와 텍스트 사이 여백

                    // 텍스트 부분
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'EOS',
                          style: TextStyle(
                            fontSize: 14, // 작은 폰트 크기
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4), // 텍스트 사이 간격
                        Text(
                          '심승헌(본인 이름)',
                          style: TextStyle(
                            fontSize: 24, // 이름 크기
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '나를 소개하는 한마디!',
                          style: TextStyle(
                            fontSize: 16, // 설명 텍스트 크기
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
