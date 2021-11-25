import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555)

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0A0E21),
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                ))
              ],
            )),
            Expanded(
                child: ReusableCard(
              color: activeCardColor,
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                )),
              ],
            )),
            Container(
              height: 80,
              width: double.infinity,
              color: bottomContainerColor,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
