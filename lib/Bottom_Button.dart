import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/ReUsableCard.dart';
import 'ourCard.dart';
import 'constants.dart';
import 'RoundIconButton.dart';
import 'package:bmi_calculator/results_page.dart';


class BottomButton extends StatelessWidget {

  BottomButton({@required this.name,@required this.onTap } );

  final String name ;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Center(
            child: Text(name
                , style: KLargeButton)
        ),
        color: Color(0XFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: KBottomContainerHeight,
      ),
    );
  }
}
