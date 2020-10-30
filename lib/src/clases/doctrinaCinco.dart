import 'package:flutter/material.dart';

class DoctrinaCinco extends StatefulWidget {
  DoctrinaCinco({Key key}) : super(key: key);

  @override
  _DoctrinaCincoState createState() => _DoctrinaCincoState();
}

class _DoctrinaCincoState extends State<DoctrinaCinco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Text(
            "Doctrina Cinco",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
