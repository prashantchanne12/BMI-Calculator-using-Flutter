import 'package:flutter/material.dart';
import 'constants.dart';

class CardDetails extends StatelessWidget {
  final icon, text;

  CardDetails({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kHeight,
        ),
        Text(
          text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
