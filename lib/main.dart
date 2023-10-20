import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
// Column
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        color: Colors.red,
      width: 100,
        height: 100,
      margin: EdgeInsets.all(10),
    ),
        Container(
          color: Colors.blueAccent,
          width: 50,
          height: 50,
          margin: EdgeInsets.all(10),
        )
      ],
    );
  }
}

   */

/*
// row
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
        ),
        Container(
          color: Colors.blueAccent,
          width: 50,
          height: 50,
          margin: EdgeInsets.all(10),
        )
      ],
    );
  }
}
 */

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
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
              ),
            ),
          ),
        );
  }
}


