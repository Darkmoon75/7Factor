import 'package:flutter/material.dart';

class DoctrinaCuatro extends StatefulWidget {
  DoctrinaCuatro({Key key}) : super(key: key);

  @override
  _DoctrinaCuatroState createState() => _DoctrinaCuatroState();
}

class _DoctrinaCuatroState extends State<DoctrinaCuatro> {
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
            "Doctrina Cuatro",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
