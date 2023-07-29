import 'package:flutter/material.dart';

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
                    cardChild: Column(
                      
                  ),
                  ),
                ),
                Expanded(
                 child: ReusableCard(
                  colour: activeCardColour,
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

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(5),
      ),
      height: 200,
      width: 170,
    );
  }
}
