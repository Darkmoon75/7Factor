import 'package:flutter/material.dart';

class DoctrinaSeis extends StatefulWidget {
  DoctrinaSeis({Key key}) : super(key: key);

  @override
  _DoctrinaSeisState createState() => _DoctrinaSeisState();
}

class _DoctrinaSeisState extends State<DoctrinaSeis> {
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
            "Doctrina Seis",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
