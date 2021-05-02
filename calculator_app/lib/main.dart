import 'package:calculator_app/widgets/casharka_column.dart';
import 'package:calculator_app/widgets/casharka_row.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('app title'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          // height: 400,
          // width: 400,
          color: Colors.amber.shade500,
          // child: CasharkaColumn(),
          child: Column(
            children: [
              CasharkaColumn(),
              CasharkaRow(),
            ],
          ),
        ),
      ),
    );
  }
}
