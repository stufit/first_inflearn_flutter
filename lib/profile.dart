import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("프로필"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('홈으로'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
