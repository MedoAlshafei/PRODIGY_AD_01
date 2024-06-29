import 'package:flutter/material.dart';

class CalculatorLogic extends ChangeNotifier {
  String _output = "0";
  String _temp = "0";
  String _operator = "";
  bool _isOperatorClicked = false;
  String _result = "0";

  String get output => _output;
  String get result => _result;

  void buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _output = "0";
      _temp = "0";
      _operator = "";
      _result = "0";
      _isOperatorClicked = false;
    } else if (buttonText == "⌫") {
      if (_output.isNotEmpty) {
        _output = _output.substring(0, _output.length - 1);
        if (_output.isEmpty) {
          _output = "0";
        }
      }
    } else if (buttonText == "+" || buttonText == "-" || buttonText == "x" || buttonText == "/") {
      _operator = buttonText;
      _temp = _output;
      _isOperatorClicked = true;
    } else if (buttonText == "=") {
      if (_operator.isNotEmpty) {
        _calculateResult();
        _operator = "";
        _isOperatorClicked = false;
      }
    } else {
      if (_isOperatorClicked) {
        _output = buttonText;
        _isOperatorClicked = false;
      } else {
        if (_output == "0") {
          _output = buttonText;
        } else {
          _output += buttonText;
        }
      }
      if (_operator.isNotEmpty) {
        _calculateResult();
      }
    }
    notifyListeners();
  }

  void _calculateResult() {
    double num1 = double.parse(_temp);
    double num2 = double.parse(_output);

    switch (_operator) {
      case "+":
        _result = (num1 + num2).toString();
        break;
      case "-":
        _result = (num1 - num2).toString();
        break;
      case "x":
        _result = (num1 * num2).toString();
        break;
      case "/":
        _result = (num1 / num2).toString();
        break;
    }
    notifyListeners();
  }
}
