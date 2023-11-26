import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

// 데이터를 가지고 있는 것을 클래스로 만들어야 됨.
class DataModel extends ChangeNotifier {
  int _data = 0;

  int get data => _data;

  void increment() {
    _data++;
    // 값이 바뀐것을 알려줘야 한다.
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataModel(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('프로바이더 테스트'),
          ),
          body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyWidget1(),
            MyWidget2(),
            MyWidget3(),
          ],
        ),
      ),
    ),);
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataModel>(context);
    print('모델1, $dataModel');
    return Center(
      child: Column(
        children: [
          Text('위잿1 : ${dataModel.data}'),
          ElevatedButton(onPressed: (){
            dataModel.increment();
          }, child: Text('위잿1번 테스트'))
        ],
      ),
    );
  }
}


class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    print('마이위잿2');
    return Center(
      child: Text('위잿2'),
    );
  }
}


class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataModel>(context);
    print('모델3, $dataModel');
    return Center(
      child: Column(
        children: [
          Text('위잿3 : ${dataModel.data}'),
          ElevatedButton(onPressed: (){
            dataModel.increment();
          }, child: Text('위잿3번 테스트'))
        ],
      ),
    );
  }
}




