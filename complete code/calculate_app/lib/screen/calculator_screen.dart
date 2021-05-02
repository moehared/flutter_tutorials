import 'package:calculate_app/calculator_model/calculator.dart';
import 'package:calculate_app/constants/constant.dart';
import 'package:calculate_app/widget/round_button.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var result = '';
  var number1 = 0.0;
  var number2 = 0.0;
  var isAdd = false;
  var isSub = false;
  var isDiv = false;
  var isMul = false;
  var containsDot = false;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    // print('width is ${media.width}\n height is ${media.height}');
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: media.width > 500
                ? MainAxisAlignment.center
                : MainAxisAlignment.end,
            children: [
              Align(
                alignment: media.width > 500
                    ? Alignment.topCenter
                    : Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                ),
              ),
              ...Calculator.buttonList.map((row) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: media.width > 500
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.end,
                    children: [
                      ...row.map((e) {
                        final calc = Calculator(e);
                        return FabButton(
                          label: calc.title,
                          color: calc.buttonColor,
                          onPressed: () {
                            setState(() {
                              _updateUi(e);
                            });
                          },
                          labelColor: calc.textColor,
                        );
                      }),
                    ],
                  ),
                );
              }).toList()
            ],
          ),
        ),
      ),
    );
  }

  void _updateUi(CalcButtons button) {
    var res = 0.0;
    result += Calculator(button).numbers;
    result = _doesContainDot(result);
    switch (button) {
      case CalcButtons.AC:
        result = '';
        number1 = 0;
        number2 = 0;
        break;
      case CalcButtons.plusMinus:
        var char = '-';
        result = char + result;
        if (result.length > 1) number1 = double.parse(result);
        break;
      case CalcButtons.mod:
        res = double.parse(result) / 100;
        result = res.toStringAsFixed(3);
        break;
      case CalcButtons.divide:
        _setNum();
        isDiv = true;
        break;
      case CalcButtons.multiply:
        _setNum();
        isMul = true;
        break;
      case CalcButtons.add:
        _setNum();
        isAdd = true;
        break;
      case CalcButtons.minus:
        _setNum();
        isSub = true;
        break;
      case CalcButtons.equal:
        if (isAdd) {
          print('number 1 before assigned to res $number1');
          number2 = double.parse(result);
          res = number1 + number2;
          print('add:');
          print('number 1 = $number1\n number 2 = $number2\n');
          result = res.toString();
          number1 = double.parse(result);
          print('number 1 after assigned to res $number1');
          isAdd = false;
        } else if (isDiv) {
          number2 = double.parse(result);
          var res = number1 / number2;
          print('Div:');
          print('number 1 = $number1\n number 2 = $number2\n');
          result = res.toStringAsFixed(2);
          number1 = double.parse(result);
          isDiv = false;
          break;
        } else if (isSub) {
          number2 = double.parse(result);
          res = number1 - number2;
          print('sub:');
          print('number 1 = $number1\n number 2 = $number2\n');
          result = res.toString();
          number1 = double.parse(result);
          isSub = false;
          break;
        } else if (isMul) {
          number2 = double.parse(result);
          res = number1 * number2;
          print('mul:');
          print('number 1 = $number1\n number 2 = $number2\n');
          result = res.toString();
          number1 = double.parse(result);
          isMul = false;
          break;
        }
        break;
    }
  }

  void _setNum() {
    if (number1 == 0) {
      number1 = double.parse(result);
    } else {
      number2 = double.parse(result);
    }
    result = '';
  }

  String _doesContainDot(String res) {
    int seenDot = 0;
    if (res.startsWith('..')) {
      res = res.replaceFirst('..', '.');
      _doesContainDot(res);
    }

    for (int i = 0; i < res.length; i++) {
      if (res[i].contains('.')) {
        seenDot++;
      }

      if (seenDot > 1 && res[i].contains('.')) {
        res = res.substring(0, i);
        break;
      }
    }

    return res;
  }
}

// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     FabButton(
//       label: 'AC',
//       color: Colors.grey.shade500,
//       onPressed: () {},
//       labelColor: Colors.black,
//     ),
//     FabButton(
//       label: '+/-',
//       color: Colors.grey.shade500,
//       onPressed: () {},
//       labelColor: Colors.black,
//     ),
//     FabButton(
//       label: '%',
//       color: Colors.grey.shade500,
//       onPressed: () {},
//       labelColor: Colors.black,
//     ),
//     FabButton(
//       label: '/',
//       color: Colors.amber.shade700,
//       onPressed: () {},
//     ),
//   ],
// ),
// SizedBox(height: 10),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     FabButton(
//       label: '7',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: '8',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: '9',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: 'x',
//       color: Colors.amber.shade700,
//       onPressed: () {},
//     ),
//   ],
// ),
// SizedBox(height: 10),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     FabButton(
//       label: '4',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: '5',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: '6',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: '-',
//       color: Colors.amber.shade700,
//       onPressed: () {},
//     ),
//   ],
// ),
// SizedBox(height: 10),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     FabButton(
//       label: '1',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: '2',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: '3',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: '+',
//       color: Colors.amber.shade700,
//       onPressed: () {},
//     ),
//   ],
// ),
// SizedBox(height: 10),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     FabButton(
//       label: '0',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: '.',
//       color: Colors.grey[850],
//       onPressed: () {},
//     ),
//     FabButton(
//       label: '=',
//       color: Colors.amber.shade700,
//       onPressed: () {},
//     ),
//   ],
// ),
