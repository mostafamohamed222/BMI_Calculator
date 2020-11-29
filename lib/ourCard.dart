import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

// ignore: camel_case_types
class ourCard extends StatelessWidget {

  ourCard({@required this.myicon , @required this.mystring} );

  final myicon ;
  final String mystring ;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myicon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          mystring,
          style: KLabelTextStyle,
        )
      ],
    );
  }
}


