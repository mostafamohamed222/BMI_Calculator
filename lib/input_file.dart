import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/ReUsableCard.dart';
import 'ourCard.dart';
import 'constants.dart';
import 'RoundIconButton.dart';
import 'package:bmi_calculator/results_page.dart';
import 'Bottom_Button.dart';
import 'package:bmi_calculator/CalculatorBrain.dart';

enum GenderType {
  male,
  female
}
GenderType selectedGender ;
int height = 180 ;
int weight = 60 ;
int age = 18 ;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
            children: [
              Expanded(
                child: ReUsableCard(
                  onpress: () {
                    setState(() {
                      selectedGender = GenderType.male;
                    });
                  },
                  cardChild: ourCard(
                      myicon: FontAwesomeIcons.mars,
                    mystring: "male",
                  ),
                colour:  selectedGender == GenderType.male?KActiveColor:KInactiveColor,
              ),
              ),
              Expanded(
                child: ReUsableCard(
                  onpress: (){
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  cardChild: ourCard(
                      myicon: FontAwesomeIcons.venus,
                    mystring: "female",
                  ),
                colour:  selectedGender == GenderType.female?KActiveColor:KInactiveColor,
              ),
              ),
            ],
          ),
          ),
          Expanded(
            child: ReUsableCard(
            colour:  KActiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: KLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text(
                      height.toString(),
                      style: KNumberStyle,
                    ),
                    Text(
                      "CM",
                      style: KLabelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: KInactiveSlider,
                    activeTrackColor: Colors.white,
                    thumbColor: KBottomColor,
                    overlayColor:  Color(0X29EB1555),
                    thumbShape:
                      RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape:
                      RoundSliderOverlayShape(overlayRadius: 30.0)
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue)
                    {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReUsableCard(
                colour:  KActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "WEIGHT",
                      style: KLabelTextStyle,
                    ),
                    Text
                      (
                      weight.toString(),
                      style: KNumberStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       RoundIconButton(
                         icon: FontAwesomeIcons.minus,
                         onpressed: (){
                           setState(() {
                             weight--;
                           });
                         },
                       ),
                       SizedBox(width: 10.0,),
                       RoundIconButton(
                         icon: FontAwesomeIcons.plus,
                         onpressed: (){
                           setState(() {
                             weight++;
                           });
                         },
                       )
                     ],
                    )
                  ],
                  ),
              ),
              ),
              Expanded(
                child: ReUsableCard(
                colour:  KActiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "age",
                        style: KLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: KNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onpressed: (){
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0,),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onpressed: (){
                              setState(() {
                                age++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
              ),
              ),
            ],
          )),
          BottomButton(name: "Calculate",
          onTap:  (){
            CalculatorBrain cal = CalculatorBrain(height: height , weight:  weight);
            Navigator.push(context,
                MaterialPageRoute(builder: (context)
                {
                  return Results_page(
                    BMI: cal.BMINumber(),
                    type: cal.getResult(),
                    mm: cal.getResult(),
                  );
                })
            );
          },
          )
        ],
      )
    );
  }
}




