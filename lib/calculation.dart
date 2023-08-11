import 'dart:math';

class Calculatio {
  Calculatio({this.weight, this.height});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
     _bmi = weight / pow(height / 100, 2);
     return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 18) {
      return 'Underweight';
    } else{
      return 'Noraml';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return 'Your have heigher than normal body weight! Try to exercise';
    } else if (_bmi < 18) {
      return 'Your BMI is quite low, you should eat more!';
    } else{
      return 'You have a normal body weight';
    } 
  }
}
