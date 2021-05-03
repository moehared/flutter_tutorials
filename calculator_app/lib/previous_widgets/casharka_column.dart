import 'package:flutter/material.dart';

class CasharkaColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // vertical
        crossAxisAlignment: CrossAxisAlignment.stretch, // horizantal
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'child 1',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
// SizedBox(height: 20),
          Text(
            'child 2',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
// SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red),
            onPressed: () {},
            child: Text('click me'),
          )
        ],
      ),
    );
  }
}
