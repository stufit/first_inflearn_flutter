import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? _checkBoxValue = false;
  String _radioValue = 'Option 1';
  double _sliderValue = 50.0;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Form Controls Example')),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('체크박스: $_checkBoxValue, 라디오버튼 : $_radioValue, 슬라이더: $_sliderValue, 스위치: $_switchValue'),
              ),
              SizedBox(height: 16.0),
              Text('Checkbox:'),
              Checkbox(
                  value: _checkBoxValue,
                  onChanged: (value) {
                    setState(() {
                      _checkBoxValue = value;
                    });
                  }),
              SizedBox(height: 16.0),
              Text('Radio Buttons:'),
              Row(
                children: [
                  Radio(
                    value: 'Option 1',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  Text('Option 1'),
                  Radio(
                    value: 'Option 2',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  Text('Option 2'),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Text('Slider'),
              Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      print(value);
                      _sliderValue = value;
                    });
                  }),
              SizedBox(height: 16.0),
              Text('Switch'),
              Switch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    print(value);
                    _switchValue = value;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
