import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.brown,
                ),
                label: "홈"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "즐겨찾기"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "환경설정"),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          backgroundColor: Colors.amber,
          selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.green,
          // type: BottomNavigationBarType.fixed,
          type: BottomNavigationBarType.shifting,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
        backgroundColor: Colors.grey, // 배경화면
      ),
    );
  }
  }



/*
// stl 스타일로
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.brown,
                ),
                label: "홈"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "즐겨찾기"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "환경설정"),
          ],
          onTap: (index){
            print(index);
          },
          currentIndex: 1,
          backgroundColor: Colors.amber,
          selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.green,
          type: BottomNavigationBarType.shifting,
        ),
      ),
    );
  }
}


 */