import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '계산기',
      home: Calc(),
    );
  }
}

class Calc extends StatefulWidget {
  @override
  _Calculator createState() => _Calculator();
}

class _Calculator extends State<Calc> {
  String _currentValue = "";
  double _previousValue = 0;
  String _operation = "";
  String _process = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('계산기')),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
              ),
              alignment: Alignment.bottomRight,
              child: Column(
                children: [
                  Text(_process, style: TextStyle(fontSize: 13, color : Colors.grey)),
                  Text(_currentValue, style: TextStyle(fontSize: 25.0)),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(

              padding: EdgeInsets.all(8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                List<String> labels = [
                  'C', '(', '%', '/',
                  '7', '8', '9', '*',
                  '4', '5', '6', '-',
                  '1', '2', '3', '+',
                  '0', '00', '.', '='
                ];

                return calculatorButton(labels[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget calculatorButton(String label) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // 배경색 -> primary
        primary: (label == '+' || label == '-' || label == '*' || label == '/' || label == '=') ? Colors.blue : Colors.grey[200],
        // 전경색(텍스트나 아이콘 등) -> onPrimary
        onPrimary: Colors.black,
      ),
      onPressed: () {
        setState(() {
          if(label == "+" || label == "*" || label =="-" || label == "/"){
            _process = _process + label;
            _previousValue = double.parse(_currentValue);
            _currentValue = "";
            _operation = label;
          } else if(label == "C"){
            _process = "";
            _previousValue = 0;
            _currentValue = "";
            _operation = "";
          } else if(label == "="){
            Parser p = Parser();
            Expression exp = p.parse(_process);
            ContextModel cm = ContextModel();
            _currentValue = (exp.evaluate(EvaluationType.REAL, cm)).toString();
            _process = "(" + _process + ")";
          } else {
            _process += label;
            _currentValue += label;
          }
        });
      },
      child: Text(label, style: TextStyle(fontSize: 24.0)),
    );
  }
}