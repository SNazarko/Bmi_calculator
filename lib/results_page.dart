import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Yor Result',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
