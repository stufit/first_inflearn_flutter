import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.amber),
          debugShowCheckedModeBanner: false, // 오른쪽 구석에 debug 표시 제거
          home: Scaffold(
            appBar: AppBar(
              title: Text("AWESOME BRO"),
            ),
            body: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '아이디',
                )
              )
            ),
            floatingActionButton: FloatingActionButton(
              elevation: 0.0, // 그림자 같은거
              onPressed: () {}, // 익명 함수
              child: Icon(Icons.add),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // 더하기 버튼 위치 조정
            drawer: Drawer(
              child: ListView(
                children: [
                  ListTile(title:Text("첫번째 메뉴")),
                  ListTile(title:Text("두번째 메뉴")),
                ],
              ),
            ), // 왼쪽 상단 메뉴
            persistentFooterButtons: [
              Icon(Icons.settings),
              SizedBox(width: 20), // 아이콘 사이 간격
              Icon(Icons.access_alarm),
              SizedBox(width: 20),
            ], // 하단 아이콘
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0, // 어디가 초기값인지
              fixedColor: Colors.green,
              items: [
                BottomNavigationBarItem(
                    label: "메인메뉴",
                    icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: "검색",
                    icon: Icon(Icons.search)),
                BottomNavigationBarItem(
                    label: "프로필",
                    icon: Icon(Icons.account_circle)),
              ],
              onTap: (int indexOfItem){},
              backgroundColor: Colors.amber,
            ),
            backgroundColor: Colors.indigo,
            resizeToAvoidBottomInset: false, // 키보드가 올라오면 화면이 줄어드는 것을 방지
          ),
        );
  }
}


