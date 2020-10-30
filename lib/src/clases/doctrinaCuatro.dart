import 'package:flutter/material.dart';
import 'package:seven_hub/src/HomeScreen.dart';

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
          "¿Puedo creer en la iglesia?",
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
            "Doctrina Cuatro",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
