import 'package:flutter/material.dart';
import 'package:player_info_app/data_source/player_data.dart';
import '../widgets/player_info_widget.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = '/';
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Player info app'),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return PlayerInfo(player: players[index]);
          },
          itemCount: players.length,
        ));
  }
}
