import 'package:flutter/material.dart';

void main() {
  runApp(FeedbackForm());
}

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  State<FeedbackForm> createState() => _MyAppState();
}

class _MyAppState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  int? _rating = 0;
  String _successMessage = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("프로젝트1"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "이름"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "이름을 입력해주세요.";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "이메일"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "이메일을 입력해주세요.";
                    } else {
                      return null;
                    }
                  },
                ),
                ListTile(
                  title: Text("우리의 앱 서비스는 몇점?"),
                  trailing: Text('$_rating'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(5, (index) {
                    return Radio<int>(
                      value: index + 1,
                      groupValue: _rating,
                      onChanged: (value) {
                        setState(() {
                          _rating = value;
                        });
                      },
                    );
                  }),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          _successMessage = "성공하였습니다.";
                        });
                      }else{
                        setState(() {
                          _successMessage="빈 공란이 있습니다.";
                        });
                      }
                    },
                    child: Text("제출")),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      _successMessage,
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
