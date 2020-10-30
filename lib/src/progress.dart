import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flare_dart/actor.dart';

class Progress extends StatefulWidget {
  Progress({Key key}) : super(key: key);

  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
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
                "images/Chest.flr",
                animation: "Play",
              ),
            ),
          ),
          Text(
            "¡Sigue estudiando para llegar a tu recompensa!",
            style: TextStyle(
              fontSize: 15,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = Colors.blue[700],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(23.0),
            child: Container(
              width: 300,
              height: 300,
              child: FlareActor(
                "images/map.flr",
                animation: "Move_1",
              ),
            ),
          ),
          Text(
            "Esfuérzate y anímate, no temas, ni tengas miedo de ellos, porque el Señor va contigo, no te dejará, ni te desamparará. Deuteronomio 31:6",
            style: TextStyle(color: Colors.black),
          ),
        ],
      )),
    );
  }
}
