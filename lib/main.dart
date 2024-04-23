import 'package:flutter/material.dart';
import 'screens/input_page.dart';

const backGroundColor = Color(0xFF0A0D22);
const scaffoldBackgroundColor = Color(0xFF0A0D22);

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: ThemeData.dark().appBarTheme.copyWith(
                backgroundColor: backGroundColor,
              ),
          scaffoldBackgroundColor: scaffoldBackgroundColor),
      home: const InputPage(),
    );
  }
}
