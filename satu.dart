import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class _MyAppState extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kalkulator'),
        ),
        body: Container(),
      ),
    );
  }
}

class _MyAppstate extends State<MyApp> {
  String _output = "0";
  Void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _output = "0";
      } else if (buttonText == "+/-") {
        _output = (double.parse(_output) * -1).toString();
      } else if (buttonText == "%") {
        _output = (double.parse(_output) / 100).toString();
      } else if (buttonText == "=") {
        _output = _calculate();
      } else {
        _output += buttonText;
      }
    });
  }
  
  String _calculate() {
  return "0";
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator',
      home: Scaffold (
        appBar: AppBar(
          title: Text ('Kalkulator'),
        ),
        body: Column (
          children : <Widget> [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
              child: Text (
                _output,
                style: TextStyle(
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Divider(),
            ),
            
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                _buildButton ("7"),
                _buildButton ("8"),
                _buildButton ("9"),
                _buildButton ("/"),
              ],
            )
          
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                _buildButton ("4"),
                _buildButton ("5"),
                _buildButton ("6"),
                _buildButton ("x"),
              ],
            )
        
          Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                _buildButton ("1"),
                _buildButton ("2"),
                _buildButton ("3"),
                _buildButton ("-"),
              ],
            )
        
        Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              _buildButton ("C"),
              _buildButton ("0"),
              _buildButton ("+/-"),
              _buildButton ("+"),
            ],
          )
        
        Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              _buildButton ("%"),
              _buildButton ("="),
            ],
          )
        ]
      ),
    ),
  );
}

Widget _buildButton (String buttonText) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: RaisedButton (
        padding : EdgeInsets.all(24.0),
        child : Text(
            buttonText, 
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed : () => _buttonPressed (buttonText),
        ),
      ), 
    );
  }
}

String _calaculate (){
  List <String> operations = _output.split (RegExp(r'[+\-x/]'));
  List <String> operators = _ouptu.split (RegExp(r'[0-9]+'));

  for (int i = 0; i < operators.length; i++) {
    String operator = operators [i];
    double operand = double.parse(operations[i + 1]);

    if (operator == "+") {
      result += operand;
    } else if (operator == "-"){
      result -= operand;
    } else if (operator == "x") {
      result *= operand;
    } else if (operator == "/") {
      result /= operand;
    }
  }
  
  return result.toString();
}



