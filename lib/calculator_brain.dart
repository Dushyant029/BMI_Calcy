import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.weight,this.height});

  final int height;
  final int weight;

  double _bmi;

  String CalculateBMI(){
    _bmi = weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>30){
      return 'Obese';
    } else if(_bmi>=25 && _bmi<=29.9){
      return 'OverWeight';
    } else if(_bmi>=18.5 && _bmi<=24.9){
      return 'Normal';
    }else {
      return 'UnderWeight';
    }
  }

  String getInterpretation(){
    if(_bmi > 30){
      return ' People with obesity are at increased risk for many diseases and health conditions, including cardiovascular disease, high blood pressure (Hypertension), Type 2 diabetes, breathing problems and more.';
    }else if(_bmi >= 25 && _bmi<=29.9){
      return 'Being overweight may increase your risk of cardiovascular disease. Consult with your healthcare provider and consider making lifestyle changes through healthy eating and fitness to improve your health.';
    }else if( _bmi >= 18.5 && _bmi<=24.9){
      return 'This healthy weight helps reduce your risk of serious health conditions and means you’re close to your fitness goals.';
    }else{
      return 'Keep in mind that an underweight BMI calculation may pose certain health risks. Please consult with your healthcare provider for more information about BMI calculations.';
    }

  }

}