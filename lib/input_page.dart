import 'package:flutter/material.dart';

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
                  child: ReusableWidget(
                    Colors: Color(0XFF1D1E33),
                  ),
                ),
                Expanded(
                 child: ReusableWidget(
                  Colors: Color(0XFF1D1E33),
                 ),
                ),
              ],
            )),
            Expanded(
             child: ReusableWidget(
              Colors: Color(0XFF1D1E33),
             ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(
                    Colors: Color(0XFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    Colors: Color(0XFF1D1E33),
                  ),
                ),
              ],
            )),
            Container(
              child: Text('Calculate'),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              height: 10.0,
              width: 50.0,
              padding:EdgeInsets.all(2),
            )
          ],
        ));
  }
}

class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.Colors});
  final Color Colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors,
        borderRadius: BorderRadius.circular(5),
      ),
      height: 200,
      width: 170,
    );
  }
}
