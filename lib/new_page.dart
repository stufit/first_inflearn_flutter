import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as String;
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
