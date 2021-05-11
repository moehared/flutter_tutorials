import 'package:flutter/material.dart';

import '../model/calculator_model.dart';
import '../widgets/fab_button.dart';

class HomePage extends StatelessWidget {
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
                '90.00',
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
                          onPress: () {},
                          textLabel: calc.title,
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
}
