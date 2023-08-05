import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottonContainerHeight = 80.0;
const activeCardColour = Color(0XFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, text: 'MALE',),
                  ),
                ),
                Expanded(
                 child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                 ),
                ),
              ],
            )),
            Expanded(
             child: ReusableCard(
              colour: activeCardColour,
             ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            )),
            Container(
              child: Center(child: Text('Calculate')),
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              height: bottonContainerHeight,
              width: double.infinity,
              
            )
          ],
        ));
  }
}

