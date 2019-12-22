import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        height: 80.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
      ),
    );
  }
}
