import 'package:flutter/material.dart';

import 'screen/calculator_screen.dart';

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
