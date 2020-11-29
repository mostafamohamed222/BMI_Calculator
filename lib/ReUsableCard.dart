import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ReUsableCard extends StatelessWidget {
  ReUsableCard({@required this.colour , this.cardChild , this.onpress});

  final Color colour;
  final Widget cardChild ;
  final Function onpress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color:colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
