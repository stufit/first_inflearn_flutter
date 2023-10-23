import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '내앱',
    theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          "스투핏앱",
        )),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.green),
                    hintText: "이메일을 입력하세요",
                    hintStyle: TextStyle(color: Colors.amber),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(width: 4, color: Colors.red)),
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(width: 1, color: Colors.lightBlue)),
                    enabled: true,
                    icon: Icon(Icons.search),
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.stacked_bar_chart),
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.search,
                obscureText: false, // 값을 안보이게함
                controller: _emailController,
              ),
              ElevatedButton(onPressed: (){print(_emailController.text);}, child: Text('클릭'))
            ],
          ),
        ),
      ),
    );
  }
}
