import 'package:flutter/material.dart';

class PlayerDetailsScreen extends StatelessWidget {
  static const routeName = '/PlayerDetailsScreen';
  const PlayerDetailsScreen();
  // final String id;

  @override
  Widget build(BuildContext context) {
    final playerID = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('player details'),
      ),
      body: Center(
        child: Container(child: Text('player ID is $playerID')),
      ),
    );
  }
}
