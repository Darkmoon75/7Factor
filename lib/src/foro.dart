import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

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
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              width: 200,
              height: 200,
              child: FlareActor(
                "images/messages.flr",
                animation: "go",
              ),
            ),
          ),
          Text("Puedes preguntar lo que quieras a nuestros mentores",
              style: TextStyle(color: Colors.black)),
        ],
      )),
    );
  }
}
