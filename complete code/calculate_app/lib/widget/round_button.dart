import 'package:flutter/material.dart';

class FabButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color labelColor;
  final Function onPressed;

  const FabButton({
    this.label,
    this.color,
    this.onPressed,
    this.labelColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return RaisedButton(
      elevation: 0,
      color: color,
      padding: label == '0'
          ? const EdgeInsets.fromLTRB(34, 10, 120, 20)
          : const EdgeInsets.all(20),
      onPressed: onPressed,
      shape: label == '0' ? StadiumBorder() : CircleBorder(),
      // constraints: BoxConstraints.tightFor(width: 70, height: 70),
      child: Text(
        label,
        style: TextStyle(color: labelColor, fontSize: 35),
      ),
      // fillColor: color,
    );
  }
}
