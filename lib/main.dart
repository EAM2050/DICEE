import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceeDisp());
}

// class DiceeApp extends StatelessWidget {
//   const DiceeApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class DiceeDisp extends StatefulWidget {
  const DiceeDisp({Key? key}) : super(key: key);

  @override
  State<DiceeDisp> createState() => _DiceeDispState();
}

class _DiceeDispState extends State<DiceeDisp> {
  Random vl = new Random();
  int ldm = 1, rdm = 6;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[200],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightBlueAccent[400],
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                ldm = vl.nextInt(6) + 1;
                rdm = vl.nextInt(6) + 1;
              });
            },
            child: Row(
              children: [
                Expanded(
                  //Left Dice
                  child: Image(
                    image: AssetImage('images/Dice($ldm).png'),
                    // width: 100,
                    // height: 100,
                  ),
                ),
                Expanded(
                  //Right Dice
                  child: Image.asset('images/Dice($rdm).png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
