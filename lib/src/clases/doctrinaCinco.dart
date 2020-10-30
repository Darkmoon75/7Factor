import 'package:flutter/material.dart';
import 'package:seven_hub/src/HomeScreen.dart';

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
          "¿Es correcto mi estilo de vida?",
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
            "Doctrina Cinco",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
