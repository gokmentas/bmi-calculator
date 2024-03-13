import 'package:flutter/material.dart';
import 'theme.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: const InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("BMI CALCULATOR"),
      ),
      body: const Center(
        child: Text("Body Text"),
      ),
      floatingActionButton: FloatingActionButton(
        // shape: const CircleBorder(),
        // backgroundColor: Theme.of(context).buttonColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
