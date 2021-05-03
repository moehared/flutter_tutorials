import 'package:calculator_app/widgets/fab_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // run
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        // leading: Icon(Icons.menu),
        title: Text('App Bar'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FabButton(
                  textLabel: 'AC',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '+/-',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '%',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '/',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FabButton(
                  textLabel: 'AC',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '+/-',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '%',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '/',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FabButton(
                  textLabel: 'AC',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '+/-',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '%',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '/',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FabButton(
                  textLabel: 'AC',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '+/-',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '%',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
                FabButton(
                  textLabel: '/',
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
