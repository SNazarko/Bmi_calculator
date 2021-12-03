import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  late double _bmi = 19;

  CalculatorBrain(
    this.height,
    this.weight,
  );
  double calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    if (calculateBmi() >= 25) {
      return 'Overweight';
    } else if (calculateBmi() > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (calculateBmi() >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (calculateBmi() > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
