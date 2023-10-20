import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("어썸솔로"),
          centerTitle: false,
          backgroundColor: Colors.amber,
          elevation: 10.0,
          // leading은 제목 왼쪽
          leading: IconButton(
            icon:Icon(Icons.menu),
            tooltip: '메뉴 버튼',
            onPressed: () {
              print('메뉴 버튼 클릭됨');
            },
          ),
          // actions 는 제목 오른쪽
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.comment),
              tooltip: '설명 버튼',
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.settings),
                tooltip: '설정 버튼',
            ),
          ],
        ),
      )
    );
  }
}

 */


/*
// stack 쌓는것.
class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                width: 400,
                height: 400,
                color: Colors.yellow,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ],
          )
        ),
      )
    );
  }
}

 */


// positioned
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 400,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  Positioned(
                      top: 50,
                      left: 50,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.indigo,
                      )
                  )
                ],
              )
          ),
        )
    );
  }

}




