import 'dart:core';

import 'package:flutter/material.dart';

import '../constants/constant.dart';

class Calculator {
  static const buttonList = buttons;
  final CalcButtons button;

  Calculator(this.button);

  String get title {
    switch (button) {
      case CalcButtons.AC:
        return 'AC';
      case CalcButtons.num0:
        return '0';
      case CalcButtons.num1:
        return '1';
      case CalcButtons.num2:
        return '2';
      case CalcButtons.num3:
        return '3';
      case CalcButtons.num4:
        return '4';
      case CalcButtons.num5:
        return '5';
      case CalcButtons.num6:
        return '6';
      case CalcButtons.num7:
        return '7';
      case CalcButtons.num8:
        return '8';
      case CalcButtons.num9:
        return '9';
      case CalcButtons.numDot:
        return '.';
      case CalcButtons.plusMinus:
        return '+/-';
      case CalcButtons.mod:
        return '%';
      case CalcButtons.divide:
        return '/';
      case CalcButtons.multiply:
        return 'X';
      case CalcButtons.add:
        return '+';
      case CalcButtons.minus:
        return '-';
      case CalcButtons.equal:
        return '=';
      default:
        return '';
    }
  }

  String get numbers {
    switch (button) {
      case CalcButtons.num0:
        return '0';
      case CalcButtons.num1:
        return '1';
      case CalcButtons.num2:
        return '2';
      case CalcButtons.num3:
        return '3';
      case CalcButtons.num4:
        return '4';
      case CalcButtons.num5:
        return '5';
      case CalcButtons.num6:
        return '6';
      case CalcButtons.num7:
        return '7';
      case CalcButtons.num8:
        return '8';
      case CalcButtons.num9:
        return '9';
      case CalcButtons.numDot:
        return '.';
      default:
        return '';
    }
  }

  Color get buttonColor {
    switch (button) {
      case CalcButtons.equal:
      case CalcButtons.add:
      case CalcButtons.minus:
      case CalcButtons.multiply:
      case CalcButtons.divide:
        return Colors.amber.shade700;
      case CalcButtons.AC:
      case CalcButtons.plusMinus:
      case CalcButtons.mod:
        return Colors.grey.shade500;
      default:
        return Colors.grey[850];
    }
  }

  Color get textColor {
    switch (button) {
      case CalcButtons.AC:
      case CalcButtons.plusMinus:
      case CalcButtons.mod:
        return Colors.black;
      default:
        return Colors.white;
    }
  }
}
