import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// pageView
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("페이지뷰"),
        ),
        body: PageView(
          controller: PageController(
            initialPage: 2,
            viewportFraction: 0.7
          ),
          children: [
            Container(
              margin: EdgeInsets.all(10),color: Colors.red,
            ),
            Container(
              margin: EdgeInsets.all(10),color: Colors.blueAccent,
            ),
            Container(
              margin: EdgeInsets.all(10),color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}





/* GridView
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("그리드뷰"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            // scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 12),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.purpleAccent,
                child: Center(child: Text('테스트')),
              );
            },
          ),
        ),
      ),
    );
  }
}
 */
