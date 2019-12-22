import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.resultInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      resultInterpretation,
                      style: kBMIBodyText,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
