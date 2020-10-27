import 'package:flutter/material.dart';

class Clases extends StatefulWidget {
  Clases({Key key}) : super(key: key);

  @override
  _ClasesState createState() => _ClasesState();
}

class _ClasesState extends State<Clases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: new Center(
        child: new Text("Esta es la pantalla de Clases"),
      ),
    );
  }
}
