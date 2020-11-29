import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'ReUsableCard.dart';
import 'Bottom_Button.dart';

class Results_page extends StatelessWidget {

  final String BMI ;
  final String type ;
  final String mm ;

  Results_page({ @required this.BMI , @required this.type,@required this.mm });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                  "Your Result",
              style: KTitleTextStyle,
              ),
            ) ,
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReUsableCard(
                colour: KActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      type,
                      style: KResultTextStyle ,
                    ),
                    Text(
                      BMI,
                      style: KNumberStyle,
                    ),
                    Text(
                      mm,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
             child: BottomButton(name: "Re-Calculate",
             onTap: (){
               Navigator.pop(context);
             },
             ),
          )
        ],
      ),
    );

  }
}



