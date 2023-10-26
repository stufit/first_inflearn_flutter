import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("알림창")),
        body: Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog(
          context: context,
          barrierDismissible: false, // true : 팝업 떳을 때 다른 곳 누르면 나가짐
          builder: (BuildContext context) => AlertDialog(
                title: Text('다이얼로그 타이틀'),
                content: Text('다이얼로그 설명'),
            backgroundColor: Colors.amber[100],
            elevation: 100, // 화면에서 띄어진 정도
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            contentPadding: EdgeInsets.all(12), // 팝업내용 위치
            actionsPadding: EdgeInsets.all(8), // 팝업 크기
            titlePadding: EdgeInsets.all(12), // 팝업 제목 위치
            buttonPadding: EdgeInsets.all(0),
            actions: [
              TextButton(
                  onPressed: ()=>Navigator.of(context).pop(), // 전화면으로 돌아감,
                  child: Text('취소')),
              TextButton(
                  onPressed: ()=>Navigator.of(context).pop(), // 전화면으로 돌아감
                  child: Text('확인')),
            ],
              )),
      child: Text("다이얼로그보여줘"),
    );
  }
}
