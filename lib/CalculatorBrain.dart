

import 'package:flutter/cupertino.dart';
import 'dart:math';
class CalculatorBrain
{
  CalculatorBrain({@required this.weight , @required this.height});

  int height;
  int weight;
  double bmi;

  String BMINumber()
  {
    double BMIN = weight / pow(height/100, 2);
    bmi = BMIN;
    return BMIN.toStringAsFixed(1);
  }

  String getResult()
  {
    if (bmi >= 25)
      {
        return "over weight";
      }
    else if (bmi>18.5)
      {
        return "normal";
      }
    else
      {
        return "under weight";
      }
  }

  
}