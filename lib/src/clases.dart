import 'dart:math';

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
        body: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                lesson('images/jesus.png', '1', '¿Quien es Dios?',
                    Colors.blue[100]),
                SizedBox(
                  height: 15,
                ),
                twoLessons(
                    lesson('images/pareja.png', '2', '¿Porque somos asi?',
                        Colors.orange),
                    lesson('images/problema.png', '3', '¿Aun hay esperanza?',
                        Colors.blueAccent)),
                SizedBox(
                  height: 15,
                ),
                twoLessons(
                  lesson('images/iglesia.png', '4',
                      '¿Puedo creer en la iglesia?', Colors.orange),
                  lesson('images/saludable.png', '5', '¿Como debo vivir?',
                      Colors.green),
                )
              ],
            )
          ],
        ));
  }
}

Widget twoLessons(Widget lesson1, Widget lesson2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      lesson1,
      SizedBox(
        width: 20,
      ),
      lesson2
    ],
  );
}

Widget lesson(String image, String number, String title, Color color) {
  return Container(
    child: Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Transform.rotate(
                  angle: 3 * pi / 4,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey[300],
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.yellow[600]),
                    value: Random().nextDouble(),
                    strokeWidth: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 42,
                  ),
                ),
                CircleAvatar(
                  child: Image.asset(
                    image,
                    height: 50,
                  ),
                  radius: 35,
                  backgroundColor: color,
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset(
                  'images/corona.png',
                  height: 40,
                ),
                Text(
                  number,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )
      ],
    ),
  );
}
