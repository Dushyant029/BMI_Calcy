import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(

          primaryColor: Color(0xFF9878FF),
          scaffoldBackgroundColor: Color(0xFFD5C9F5),
          accentColor: Colors.purple,

      ),
      home: InputPage(),
    );
  }
}