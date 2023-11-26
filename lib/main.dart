import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('프로바이더 테스트'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Provider<int>.value(
              value: 5,
              child: MyWidget1(),
            ),
            SizedBox(height: 10,),
            MyWidget2(),
          ],
        ),
      ),
    );
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<int>(context);
    print('마이위잿');

    return Column(
      children: [
        Text('나의 위잿은 : $data'),
        MyWidget3(),
      ],
    );
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    print('나의 위잿2');
    return Center(
      child: Text('나의 위잿2'),
    );
  }
}


class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<int>(context);
    return Center(
      child: Text('나의 위잿3 입니다. $data'),
    );
  }
}
