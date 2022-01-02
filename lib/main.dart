import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dicee',
            ),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ld = 1;
  int rd = 1;
  var random = Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$ld.png'),
              onPressed: () {
                setState(() {
                  ld = random.nextInt(6) + 1;
                  rd = random.nextInt(6) + 1;
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rd.png'),
              onPressed: () {
                setState(() {
                  rd = random.nextInt(6) + 1;
                  ld = random.nextInt(6) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
