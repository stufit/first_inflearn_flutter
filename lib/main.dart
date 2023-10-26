import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 400,
            height: 400,
            child: Card(
              elevation: 50,
              margin: EdgeInsets.all(5),
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.deepPurple,
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              color: Colors.amber,
              child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.brown,
                    radius: 50,
                    child: Center(
                      child: Text("호이",style: TextStyle(fontSize: 30),),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
