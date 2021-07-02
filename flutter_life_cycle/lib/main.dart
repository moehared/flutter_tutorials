import 'package:flutter/material.dart';
import '../counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) {
    print('My stateless widget constructor\n');
  }

  @override
  Widget build(BuildContext context) {
    print('build method is called\n');
    print('.........................\n');
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter stateless widget life cycle'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => MyCounterPage(count: 0)));
          },
          child: Text('counter page'),
        ),
      ),
    );
  }
}
