import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '안녕 플러터야',
              style: TextStyle(
              color: Colors.amber,
              fontSize: 40,
              fontStyle: FontStyle.italic,
              backgroundColor: Colors.green,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
              wordSpacing: 20,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              decorationColor: Colors.red
            ),
            )
          ],
        ),
      ),
    );
  }
}








