import 'package:flutter/material.dart';

class CasharkaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mainAxisSize: MainAxisSize.min,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Text('Total: \$90'),
        ),
        // Spacer(),
        Text('view order'),
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(10),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Check out',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
