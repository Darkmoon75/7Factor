import 'dart:math';

import 'package:flutter/material.dart';
import 'package:seven_hub/src/clases/doctrinaCinco.dart';
import 'package:seven_hub/src/clases/doctrinaCuatro.dart';
import 'package:seven_hub/src/clases/doctrinaDos.dart';
import 'package:seven_hub/src/clases/doctrinaSeis.dart';
import 'package:seven_hub/src/clases/doctrinaTres.dart';
import 'package:seven_hub/src/clases/doctrinaUno.dart';
import 'package:seven_hub/src/tutores.dart';

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
                Container(
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
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.yellow[600]),
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
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DoctrinaUno(),
                                    ),
                                  );
                                },
                                child: CircleAvatar(
                                  child: Image.asset(
                                    'images/jesus.png',
                                    height: 50,
                                  ),
                                  radius: 35,
                                  backgroundColor: Colors.blue,
                                ),
                              )
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
                                '1',
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
                        '¿Quien es Dios?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.yellow[600]),
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DoctrinaDos(),
                                      ),
                                    );
                                  },
                                  child: CircleAvatar(
                                    child: Image.asset(
                                      'images/pareja.png',
                                      height: 50,
                                    ),
                                    radius: 35,
                                    backgroundColor: Colors.green,
                                  ),
                                )
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
                                  '2',
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
                          '¿Cual es mi naturaleza?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Column(
                      children: [
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.yellow[600]),
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DoctrinaTres(),
                                      ),
                                    );
                                  },
                                  child: CircleAvatar(
                                    child: Image.asset(
                                      'images/problema.png',
                                      height: 50,
                                    ),
                                    radius: 35,
                                    backgroundColor: Colors.green,
                                  ),
                                )
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
                                  '3',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '¿Aun hay esperanza?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.yellow[600]),
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DoctrinaCuatro(),
                                      ),
                                    );
                                  },
                                  child: CircleAvatar(
                                    child: Image.asset(
                                      'images/iglesia.png',
                                      height: 50,
                                    ),
                                    radius: 35,
                                    backgroundColor: Colors.orange,
                                  ),
                                )
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
                                  '4',
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
                          '¿Puedo creer en la iglesia?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.yellow[600]),
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DoctrinaCinco(),
                                      ),
                                    );
                                  },
                                  child: CircleAvatar(
                                    child: Image.asset(
                                      'images/saludable.png',
                                      height: 50,
                                    ),
                                    radius: 35,
                                    backgroundColor: Colors.orange,
                                  ),
                                )
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
                                  '5',
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
                          '¿Es correcto mi estilo de vida?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.yellow[600]),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DoctrinaSeis(),
                                  ),
                                );
                              },
                              child: CircleAvatar(
                                child: Image.asset(
                                  'images/tierra.png',
                                  height: 50,
                                ),
                                radius: 35,
                                backgroundColor: Colors.red,
                              ),
                            )
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
                              '6',
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
                      '¿Qué esta pasando en el mundo?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
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
        width: 32,
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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        )
      ],
    ),
  );
}
