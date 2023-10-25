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
  double _sliderValue = 0;
  bool _agreeToTerms = false;
  String _name = '';
  String _email = '';
  String _description = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("프로젝트 피드백폼"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "이름",
                    hintText: "이관영",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "이름을 입력해주세요.";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "이메일",
                    hintText: "rhksdud23000@naver.com",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "이메일을 입력해주세요.";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: "설명란",
                    hintText: "여기에는 설명을 쓰세요.",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "설명을 입력해주세요.";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _description = value!;
                  },
                ),
                SizedBox(height: 5),
                ListTile(
                  title: Text(
                    "우리의 앱 서비스는 몇점?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  trailing: Text(
                    '$_rating',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
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
                      activeColor: Colors.deepPurple,
                    );
                  }),
                ),
                ListTile(
                  title: Text(
                    "우리 서비스를 만족하셨나요?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: "cafe"),
                  ),
                  trailing: Text(
                    '${_sliderValue.toStringAsFixed(0)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 10,
                  divisions: 10,
                  label: _sliderValue.toStringAsFixed(0),
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                  activeColor: Colors.deepPurple,
                ),
                CheckboxListTile(
                  title: Text(
                    "뉴스레터 구독",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: "NotoSans"),
                  ),
                  value: _agreeToTerms,
                  activeColor: Colors.deepPurple,
                  onChanged: (value) {
                    setState(() {
                      _agreeToTerms = value!;
                    });
                  },
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 24)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          _formKey.currentState!.save();
                          _successMessage = "성공하였습니다.";
                        });
                      } else {
                        setState(() {
                          _successMessage = "빈 공란이 있습니다.";
                        });
                      }
                    },
                    child: Text(
                      "제출",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      _successMessage,
                      style: TextStyle(
                          color: Colors.deepPurple,
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
