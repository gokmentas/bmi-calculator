import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_context.dart';

const genderCardColor = Color(0xFF1D1F33);
const cardColor = Color(0xFF111428);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = cardColor;
  Color femaleCardColor = cardColor;

  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      femaleCardColor = cardColor;
      maleCardColor = maleCardColor == cardColor ? genderCardColor : cardColor;
    } else {
      maleCardColor = cardColor;
      femaleCardColor = femaleCardColor == cardColor ? genderCardColor : cardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "BMI CALCULATOR",
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              colour: cardColor,
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
