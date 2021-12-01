import 'package:bmi_calculator/results_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'costanse.dart';
import 'icon_content.dart';

const labelTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));
const numberTextStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.w900);

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  late int height = 180;
  late int weight = 60;
  late int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF0A0E21),
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.Male;
                    });
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    color: selectedGender == Gender.Male
                        ? activeCardColor
                        : inactiveCardColor,
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.Female;
                    });
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      label: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                    color: selectedGender == Gender.Female
                        ? activeCardColor
                        : inactiveCardColor,
                  ),
                ))
              ],
            )),
            Expanded(
                child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: numberTextStyle),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                    ),
                  )
                ],
              ),
              color: activeCardColor,
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: labelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                  color: activeCardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                  cardChild: Column(
                    children: [
                      const Text(
                        'AGE',
                        style: labelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultsPage()));
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: const Text(
                    'CALCULAT',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                height: 80,
                width: double.infinity,
                color: bottomContainerColor,
              ),
            )
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  final IconData icon;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      child: Icon(icon),
    );
  }
}
