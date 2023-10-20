import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("어썸날씨3"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.amber])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.wb_sunny,
                  size: 80,
                  color: Colors.yellow,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '27도',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Sunny',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 30),
                Text(
                  'Seoul,Korea',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('습도'),
                        SizedBox(height: 5,),
                        Text('60%',style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    Column(
                      children: [
                        Text('바람'),
                        SizedBox(height: 5,),
                        Text('12 Km/h',style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    Column(
                      children: [
                        Text('압력'),
                        SizedBox(height: 5,),
                        Text('1023 hPa',style: TextStyle(fontSize: 20),)
                      ],
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
