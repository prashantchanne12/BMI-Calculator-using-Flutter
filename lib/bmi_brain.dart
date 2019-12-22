import 'dart:math';

class BMIBrain {
  int height, weight;
  double _bmi;

  BMIBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to excersize more.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Good Job.';
    } else {
      return 'You have lower than normal body weight. You can eat a bit more.';
    }
  }
}
