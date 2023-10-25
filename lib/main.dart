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
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "프로젝트1",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary),
      body: Stack(
        children: [
          PageView(
            children: [
              _buildPage(
                  imageUrl: "https://source.unsplash.com/random/3",
                  userName: "Stufit",
                  avatarUrl: "https://randomuser.me/api/portraits/men/60.jpg"),
              _buildPage(
                  imageUrl: "https://source.unsplash.com/random/2",
                  userName: "WAF",
                  avatarUrl: "https://randomuser.me/api/portraits/men/61.jpg"),
              _buildPage(
                  imageUrl: "https://source.unsplash.com/random/1",
                  userName: "Gu",
                  avatarUrl: "https://randomuser.me/api/portraits/men/62.jpg")
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPage(
      {required String imageUrl,
      required String userName,
      required String avatarUrl}) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                userName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                      offset: Offset(1,1),
                        blurRadius: 2,
                        color: Colors.red.withOpacity(1)
                    )]),
              )
            ],
          ),
        )
      ],
    );
  }
}
