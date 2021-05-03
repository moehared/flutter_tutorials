import 'package:flutter/material.dart';

class FabButton extends StatelessWidget {
  final String textLabel;
  final Color backgroundColor;
  final Color textColor;

  FabButton(
      {this.textLabel, this.backgroundColor, this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: Text(
        textLabel,
        style: TextStyle(color: textColor),
      ),
      fillColor: backgroundColor,
      shape: CircleBorder(),
      constraints: BoxConstraints(minWidth: 70, minHeight: 70),
    );
  }
}
