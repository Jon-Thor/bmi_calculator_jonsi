
import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({required this.height,required this.weight});

  final int height;
  final int weight;

  late double _bmi = weight / pow(height/100, 2);

  String calculateBMI() {
    double _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25){
      return "OverWeight";
    } else if (_bmi > 18.5) {
      return "normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretation(){
    if (_bmi >= 25){
      return "You need to exercise more";
    } else if (_bmi > 18.5) {
      return "Your body weight is normal";
    } else {
      return "You are UnderWeight. you need to eat more";
    }
  }
}