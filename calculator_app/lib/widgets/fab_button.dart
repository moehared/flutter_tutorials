import 'package:flutter/material.dart';

class FabButton extends StatelessWidget {
  final String textLabel;
  final Color backgroundColor;
  final Color textColor;
  final Function onPress;

  FabButton({
    this.textLabel,
    this.backgroundColor,
    this.textColor = Colors.white,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return RaisedButton(
      onPressed: onPress,
      child: Text(
        textLabel,
        style: TextStyle(
          color: textColor,
          fontSize: 35,
        ),
      ),
      padding: textLabel == '0'
          ? const EdgeInsets.fromLTRB(20, 20, 120, 20)
          : const EdgeInsets.all(20),
      // fillColor: backgroundColor,
      color: backgroundColor,
      shape: textLabel == '0' ? StadiumBorder() : CircleBorder(),
      // constraints: BoxConstraints(minWidth: 70, minHeight: 70),
    );
  }
}
