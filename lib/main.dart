import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          color: Colors.amber,
          child: Text("스투핏코딩",
          textDirection: TextDirection.ltr,
          style:TextStyle(fontSize: 24) ,
          overflow: TextOverflow.fade,
          ),
        ),
        Container(
          width: 400,
          color: Colors.red,
          child: Text("호이호이",
            textDirection: TextDirection.ltr,
            style:TextStyle(
              fontFamily: 'cafe',
                fontSize: 30,
            ) ,
            // overflow: TextOverflow.clip,
          ),
        ),
        Container(
          child: Image(
            image: AssetImage('assets/images/wallpaper-powfactor.jpg'),
          ),
        ),
        Container(
          child: Image.network('https://www.fun-coding.org/img/newfunlogo72.png'),
        )
      ],
    );
  }
}



