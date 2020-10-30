import 'package:flutter/material.dart';
import 'package:seven_hub/src/HomeScreen.dart';

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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
        ),
        title: Text(
          "¿Que esta pasando en el mundo?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
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
