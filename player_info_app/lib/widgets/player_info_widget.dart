import 'package:flutter/material.dart';
import 'package:player_info_app/screens/player_details_screen.dart';
import '../player_model/player.dart';

class PlayerInfo extends StatelessWidget {
  const PlayerInfo({@required this.player});
  // one property
  final Player player;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
          //   return PlayerDetailsScreen();
          // }));
          Navigator.of(context).pushNamed(
            PlayerDetailsScreen.routeName,
            arguments: player.id,
          );
        },
        contentPadding: EdgeInsets.all(15),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(player.playerImage),
        ),
        title: LabelAndValue(
          label: 'Name: ',
          value: player.name,
        ),
        subtitle: LabelAndValue(value: player.age.toString(), label: 'Age'),
        trailing: Text(player.currentTeam),
      ),
    );
  }
}

class LabelAndValue extends StatelessWidget {
  const LabelAndValue({
    @required this.value,
    @required this.label,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(label),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
