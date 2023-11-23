import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String message;
  const NewPage({required this.message , Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('새로운 페이지'),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
