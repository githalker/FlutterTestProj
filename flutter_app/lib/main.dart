import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color colorCode = Colors.deepPurpleAccent;

  final Random random = Random();

  generateRandomColor() {
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
    setState(() {
      colorCode = tmpColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
        centerTitle: true,
        backgroundColor: Colors.purple[800],
      ),
      body: GestureDetector(
        onTap: () => generateRandomColor(),
        child: Scaffold(
          backgroundColor: colorCode,
          body: Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                fontFamily: 'Langar',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
