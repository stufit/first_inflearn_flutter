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
        appBar: AppBar(
          title: Text(
            '스투핏 뮤직 플레이어',
            style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.amber, Colors.red])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/coding.jpg'),
                  radius: 100,
                ),
                SizedBox(height: 20),
                Text(
                  '곡 제목',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Dohyeon'),
                ),
                SizedBox(height: 10),
                Text(
                  '아티스트명',
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.white70,
                      fontFamily: 'cafe'),
                ),
                SizedBox(height: 30),
                Slider(
                  value: 0.5,
                  onChanged: (value) {},
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.fast_rewind),
                        iconSize: 50,
                        color: Colors.white),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.play_arrow),
                      iconSize: 50,
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.fast_forward),
                      iconSize: 50,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
