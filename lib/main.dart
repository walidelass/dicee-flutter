import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDnumber = 1;
  int rightDnumber = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDnumber = Random().nextInt(6) + 1;
                  rightDnumber = Random().nextInt(6) + 1;
                },);
                print('Left Pressed, $leftDnumber');
              },
              child: Image.asset('images/dice$leftDnumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightDnumber = Random().nextInt(6) + 1;
                },);
                print('Left Pressed, $rightDnumber');
              },
              child: Image.asset('images/dice$rightDnumber.png'),
            ),
          ),
        ],
      ),
    );
  }

}
