import 'package:flutter/material.dart';

class Foro extends StatefulWidget {
  Foro({Key key}) : super(key: key);

  @override
  _ForoState createState() => _ForoState();
}

class _ForoState extends State<Foro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: new Center(
        child: new Text("Esta es la pantalla del Foro"),
      ),
    );
  }
}
