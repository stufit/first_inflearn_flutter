import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ListView(seperator 추가)
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("리스트목록")),
      body: ListView.separated(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item번호 $index'),
            subtitle: Text("Item번호 $index 설명"),
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text(index.toString()),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Card(
            color: Colors.green,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text("Separator $index",
                  style: TextStyle(color: Colors.purpleAccent)),
            ),
          );
        },
      ),
    );
  }
}

/* ListView version2
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("리스트목록")),
      body: ListView.builder(
        physics: BouncingScrollPhysics(), // 스크롤방식
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item번호 $index'),
              subtitle: Text("Item번호 $index 설명"),
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text(index.toString()),
              ),
            );
          }),
    );
  }
}

 */

/* ListView version 1
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("스투핏"),
        ),
        body: ListView(
          reverse: false,
          padding: EdgeInsets.all(10),
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1번"),
              ),
              title: Text("아이템1번"),
              subtitle: Text("맥북"),
              trailing: IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {
                  print('클릭했다.');
                },
              ),
            ),
            ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text("2번"),
                ),
                title: Text("아이템2번"),
                subtitle: Text("아이패드"),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {
                    print('클릭했다.');
                  },
                ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("3번"),
              ),
              title: Text("아이템3번"),
              subtitle: Text("아이폰"),
              trailing: IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {
                  print('클릭했다.');
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
 */
