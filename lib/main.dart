import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.white,
          width: 5
        )
      ),
      child: Center(
        child: Text("안녕하세요",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 40)),

      ),
    );
  }
}
