import 'package:flutter/material.dart';

class Tutores extends StatefulWidget {
  Tutores({Key key}) : super(key: key);

  @override
  _TutoresState createState() => _TutoresState();
}

class _TutoresState extends State<Tutores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: new Center(
        child: new Text("Esta es la pantalla de tutor"),
      ),
    );
  }
}
