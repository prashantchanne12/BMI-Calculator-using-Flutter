import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0D22),
        scaffoldBackgroundColor: Color(0xff0A0D22),
//        textTheme: TextTheme(
//          body1: TextStyle(color: Colors.white),
//        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage(),
      },
    );
  }
}
