import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class PlusCounter with ChangeNotifier {
  int count = 0;
  void increase() {
    count++;
    notifyListeners();
  }
}

class MinusCounter with ChangeNotifier {
  int count = 100;

  void decrease() {
    count--;
    notifyListeners();
  }
}

class SumCounter with ChangeNotifier {
  int total = 0;
  SumCounter(PlusCounter plusCounter, MinusCounter minusCounter) {
    total = plusCounter.count + minusCounter.count;
    plusCounter.addListener(() {
      total = plusCounter.count + minusCounter.count;
      notifyListeners();
    });
    minusCounter.addListener(() {
      total = plusCounter.count + minusCounter.count;
      notifyListeners();
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('프로바이더 테스트'),
        ),
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => PlusCounter(),
            ),
            ChangeNotifierProvider(
              create: (context) => MinusCounter(),
            ),
            ChangeNotifierProxyProvider2<PlusCounter, MinusCounter, SumCounter>(
              create: (context) => SumCounter(
                Provider.of<PlusCounter>(context, listen: false),
                Provider.of<MinusCounter>(context, listen: false),
              ),
              update: (context, pluscounter, minuscounter, sumcounter) =>
                  SumCounter(pluscounter, minuscounter),
            ),
          ],
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final plus = Provider.of<PlusCounter>(context);
    final minus = Provider.of<MinusCounter>(context);
    final sum = Provider.of<SumCounter>(context);
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text('Plus : ${plus.count}'),
          SizedBox(height: 20),
          Text('Minus : ${minus.count}'),
          SizedBox(height: 20),
          Text('Total : ${sum.total}'),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: plus.increase, child: Text('+')),
              ElevatedButton(onPressed: minus.decrease, child: Text('-'))
            ],
          )
        ],
      ),
    );
  }
}
