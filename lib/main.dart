import 'package:calculator_app/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    '*',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (ctx, index) {
                    if (index == 0) {
                      return MyButtons(
                        buttonText: buttons[index],
                        color: Colors.green[400],
                        textColor: Colors.white,
                      );
                    } else if (index == 1) {
                      return MyButtons(
                        buttonText: buttons[index],
                        color: Colors.red[400],
                        textColor: Colors.white,
                      );
                    } else {
                      return MyButtons(
                        buttonText: buttons[index],
                        color: isOperator(buttons[index])
                            ? Colors.deepPurple
                            : Colors.deepPurple[50],
                        textColor: isOperator(buttons[index])
                            ? Colors.white
                            : Colors.deepPurple[400],
                      );
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

bool isOperator(String x) {
  if (x == '%' ||
      x == '/' ||
      x == '%' ||
      x == '+' ||
      x == '-' ||
      x == '*' ||
      x == '=') {
    return true;
  }
  return false;
}
