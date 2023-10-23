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
  bool? _checkBoxValue = false;
  String _radioValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Fun Image App')),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('$_checkBoxValue'),
              ),
              SizedBox(height: 16),
              Text('CheckBox:'),
              Checkbox(
                  value: _checkBoxValue,
                  onChanged: (value) {
                    setState(() {
                      _checkBoxValue = value;
                    });
                    print(value);
                  }),
              SizedBox(height: 5),
              Text('Radio Buttons'),
              Row(
                children: [
                  Radio(
                    value: 'Option 1',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });
                      print('Option1 value: $value');
                    },
                  ),
                  Text('Option1'),
                  Radio(
                    value: 'Option 2',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });

                      print('Option2 value: $value');
                    },
                  ),
                  Text('Option2'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
