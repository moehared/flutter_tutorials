import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:player_info_app/constants.dart';
import 'package:player_info_app/data_source/player_data.dart';

class PlayerDetailsScreen extends StatelessWidget {
  static const routeName = '/PlayerDetailsScreen';
  const PlayerDetailsScreen();
  // final String id;

  @override
  Widget build(BuildContext context) {
    final playerID = ModalRoute.of(context).settings.arguments as String;
    final player = players.firstWhere(
      (player) => player.id == playerID,
      orElse: () => throw ('could not find player with that $playerID'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('player details'),
        leading: IconButton(
          icon: Icon(Platform.isIOS
              ? CupertinoIcons.left_chevron
              : Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.of(context)
                .pop('this is the player detail info: ${player.age}');
          },
        ),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.network(player.playerImage),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      player.name,
                      style: kTextStyle,
                    ),
                    // sign here
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        text: 'Position: ',
                        style: kTextStyle.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: player.position,
                            style: kTextStyle,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                player.countryFlag,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Country'),
                          ],
                        ),
                        LabelAndValue(
                          label: 'Age',
                          value: player.age.toString(),
                        ),
                        LabelAndValue(
                          label: 'Salary',
                          value: '\$${player.salary}M',
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('About'),
                Text('Current Team'),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    player.playerDescription,
                    style: kTextStyle.copyWith(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                height: player.playerDescription.length.toDouble(),
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              Expanded(
                child: Image.network(
                  player.currentTeamLogo,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class LabelAndValue extends StatelessWidget {
  const LabelAndValue({
    @required this.label,
    @required this.value,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  });
  final String label, value;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: backgroundColor,
          child: Text(
            value,
            style: kTextStyle.copyWith(
              fontSize: 15,
              color: textColor,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(label),
      ],
    );
  }
}
