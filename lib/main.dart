import 'package:flutter/material.dart';
import 'new_page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      // routes: {
      //   '/newPage': (context) => NewPage(),
      // },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("홈페이지"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('새로운 페이지로 이동'),
          onPressed: () {
            // Navigator.pushNamed(context, '/newPage',arguments: "홈페이지에 온걸 진심으로 환영합니다.");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewPage(message: "와우")));
          },
        ),
      ),
    );
  }
}
