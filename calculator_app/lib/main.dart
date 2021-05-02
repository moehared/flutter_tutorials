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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // vertical
            crossAxisAlignment: CrossAxisAlignment.stretch, // horizantal
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'child 1',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(height: 20),
              Text(
                'child 2',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {},
                child: Text('click me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
