import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  String _errorMessage = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('$_name / $_email / $_password /');
      setState(() {
        _errorMessage = "";
      });
    } else {
      setState(() {
        _errorMessage = "채워!!!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("스투핏"),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "이름",
                      errorStyle: TextStyle(
                          color: Colors.amber,
                          fontSize: 10,
                          fontFamily: "cafe")),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "이름을 입력하세요";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "이메일"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "이메일을 입력하세요";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "비밀번호"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "비밀번호를 입력하세요";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),
                ElevatedButton(onPressed: _submitForm, child: Text('확인')),
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red, fontFamily: "cafe"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
