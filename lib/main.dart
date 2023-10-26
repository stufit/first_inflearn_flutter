import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "크롬탭에 뜨는 이름",
      home: Scaffold(
        appBar: AppBar(
          title: Text("탭바 예제"),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "홈버튼"),
              Tab(icon: Icon(Icons.favorite), text: "즐겨찾기"),
              Tab(icon: Icon(Icons.settings), text: "세팅"),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Text("홈버튼 센터")),
            Center(child: Text("즐겨찾기 센터")),
            Center(child: Text("세팅 센터")),
          ],
        ),
      ),
    );
  }
}

/*
// BottomSheet
void main() {
  runApp(BottomSheetApp());
}

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("bottom sheet 예제"),
        ),
        body: BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet( // showBottomSheet는 다른 곳 눌러도 창이 안사라짐
            context: context,
            builder: (BuildContext context) {
              return Container(
                color: Colors.amber,
                child: Column(
                  mainAxisSize: MainAxisSize.min, // 위로 올라오는 사이즈를 조절
                  children: [
                    ListTile(
                      leading: Icon(Icons.add),
                      title: Text("추가"),
                      onTap: () {
                        Navigator.of(context).pop();
                      },

                    ),
                    ListTile(
                      leading: Icon(Icons.remove),
                      title: Text("삭제"),
                      onTap: () {
                        Navigator.of(context).pop();
                      },

                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}


 */
