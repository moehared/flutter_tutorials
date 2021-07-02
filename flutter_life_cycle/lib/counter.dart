import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  MyCounterPage({required this.count});

  int? count;
// step 1:
  @override
  _MyCounterPageState createState() {
    print('state object is created\n');
    return _MyCounterPageState();
  }
}

class _MyCounterPageState extends State<MyCounterPage> {
  void _incrementCounter() {
    setState(() {
      widget.count = widget.count! + 1;
      didUpdateWidget(MyCounterPage(count: widget.count));
    });
  }

// step 2:
  @override
  void initState() {
    // our own init
    // here api . http
    // anim
    print('initState() method is called \n');
    super.initState();
  }

// step 3:
  @override
  void didChangeDependencies() {
    // our own didchange dependency .
    // this method is called when ui changes
    print('didChangeDependencies() is called\n');
    super.didChangeDependencies();
  }

  // setp 4:
  @override
  void didUpdateWidget(covariant MyCounterPage oldWidget) {
    print('didUpdateWidget() is called \n');
    // create new state object

    super.didUpdateWidget(oldWidget);
  }

  // step5:
  @override
  void dispose() {
    // clean up
    widget.count = 0;
    print(' dispose() is called ${widget.count}\n');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter statefull life cycle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
