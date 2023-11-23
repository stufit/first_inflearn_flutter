import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("홈"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('프로필로 이동'),
          onPressed: (){
            Navigator.pushNamed(context, '/profile');
          },
        ),
      ),
    );
  }
}
