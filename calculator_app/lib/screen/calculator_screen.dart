import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../model/calculator_model.dart';
import '../widgets/fab_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = '';
  double number1 = 0;
  double number2 = 0;
  // when to add , subtract , multiply iyo divide
  bool isAdd = false;
  bool isMultiply = false;
  bool isDivide = false;
  bool isSubtract = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        // leading: Icon(Icons.menu),
        title: Text('Calculator'),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.add),
        //     onPressed: () {},
        //   ),
        // ],
      ),

      // kan waxaa waaye casharaadi hore

      // body: Container(
      //   width: 400,
      //   height: 400,
      //   child: Column(
      //     children: [
      //       CasharkaColumn(),
      //       CasharkaRow(),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                result,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20),
            ...Calculator.buttonList.map((row) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...row.map(
                      (button) {
                        // create obj ;
                        final calc = Calculator(button);
                        return FabButton(
                          onPress: () {
                            setState(() {
                              _updateUi(button);
                            });
                          },
                          textLabel: calc.title,
                          textColor: calc.textBackGroundColor,
                          backgroundColor: calc.backGroundColor,
                        );
                      },
                    ),
                  ],
                ),
              );
            }).toList()
          ],
        ),
      ),
    );
  }

  void _updateUi(Buttons buttons) {
    // local variable
    var resOperation = 0.0;
// create object
    var calc = Calculator(buttons);
    // shorthand concatenation // 12345
    result += calc.numbers;
    result = _doesContainDot(result);
    switch (buttons) {
      case Buttons.AC:
        result = '';
        number1 = 0;
        number2 = 0;
        break;
      case Buttons.plusMinus:
        String char = '-';
        result = char + result;
        if (result.length > 1) number1 = double.parse(result);
        if (result.startsWith('--')) {
          result = result.replaceAll('--', '-');
        }
        break;
      case Buttons.mod:
        resOperation = double.parse(result) / 100;
        result = resOperation.toStringAsPrecision(2);
        break;
      case Buttons.add:
        initNumbers();
        isAdd = true;
        break;
      case Buttons.multiply:
        initNumbers();
        isMultiply = true;
        break;
      case Buttons.divide:
        initNumbers();
        isDivide = true;
        break;
      case Buttons.minus:
        initNumbers();
        isSubtract = true;
        break;
      case Buttons.equal:
        if (isAdd) {
          number2 = double.parse(result);
          resOperation = number1 + number2;
          print('added numbers result = $resOperation');
          result = resOperation.toString();
          number1 = double.parse(result);
          isAdd = false;
        }
        if (isMultiply) {
          number2 = double.parse(result);
          resOperation = number1 * number2;
          isMultiply = false;
          print('multiplied numbers results are  = $resOperation');
          result = resOperation.toStringAsFixed(3);
          number1 = double.parse(result);
          break;
        }
        if (isDivide) {
          number2 = double.parse(result);
          resOperation = number1 / number2;
          isDivide = false;
          result = resOperation.toString();
          number1 = double.parse(result);
        }
        if (isSubtract) {
          number2 = double.parse(result);
          resOperation = number1 - number2;
          result = resOperation.toString();
          isSubtract = false;
          number1 = double.parse(result);
        }
        break;
    }
  }

  void initNumbers() {
    if (number1 == 0) {
      number1 = double.parse(result);
      print('number1 = $number1');
    } else {
      number2 = double.parse(result);
      print('number2 = $number2');
    }
    result = '';
  }

  String _doesContainDot(String res) {
    // counter of how many times we see dots ....
    int seenDot = 0; // add 1
    // case 1 :
    if (res.startsWith('..')) {
      res = res.replaceAll('..', '.');
      // recursive call
      _doesContainDot(res);
    }
    // case 2: use for loop

    for (int i = 0; i < res.length; i++) {
      if (res[i].contains('.')) {
        seenDot++; // add 1 to seenDot;
        // seenDot = seenDot + 1;
      }
      if (seenDot > 1 && res[i].contains('.')) {
        res = res.substring(0, i);
        break;
      }
    }

    return res;
  }
}
