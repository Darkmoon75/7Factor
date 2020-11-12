import 'dart:math';
import './shared/progress_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:seven_hub/src/clases/doctrinaCinco.dart';
import 'package:seven_hub/src/clases/doctrinaCuatro.dart';
import 'package:seven_hub/src/clases/doctrinaDos.dart';
import 'package:seven_hub/src/clases/doctrinaSeis.dart';
import 'package:seven_hub/src/clases/doctrinaTres.dart';
import 'package:seven_hub/src/clases/doctrinaUno.dart';
import 'package:seven_hub/src/clases/mayordomiaCristiana.dart';
import 'package:seven_hub/src/foro.dart';

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
        backgroundColor: Colors.blueAccent,
        title: Text('Mis Clases'),
        automaticallyImplyLeading: false,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(5.0),
        crossAxisSpacing: 30.0,
        crossAxisCount: 2,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "Temas Basicos",
              style: TextStyle(fontSize: 23, fontFamily: "Times New Roman"),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: Image.asset("images/libro.png"),
          ),
          Container(
            child: Hero(
              tag: "images/jesus.png",
              child: Card(
                color: Colors.yellow,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DoctrinaUno(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'images/jesus.png',
                        // fit: BoxFit.contain,
                        height: 120,
                        width: 200,
                        alignment: Alignment.center,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "¿Quien es Dios?",
                                style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //Text("Aqui podras aprender quien es Dios")
                        ],
                      ),

                      // )

                      TopicProgress(
                        progress: 0.9,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Hero(
              tag: "images/pareja.png",
              child: Card(
                color: Colors.blue,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DoctrinaDos(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'images/pareja.png',
                        // fit: BoxFit.contain,
                        height: 120,
                        width: 200,
                        alignment: Alignment.center,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "¿Cual es nuestra naturaleza?",
                                style: TextStyle(
                                  height: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //Text("Aqui podras aprender quien es Dios")
                        ],
                      ),

                      // )

                      TopicProgress(
                        progress: 0.2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Hero(
              tag: "images/problema.png",
              child: Card(
                color: Colors.blue,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DoctrinaTres(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'images/problema.png',
                        // fit: BoxFit.contain,
                        height: 120,
                        width: 200,
                        alignment: Alignment.center,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "¿Aun hay esperanza?",
                                style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //Text("Aqui podras aprender quien es Dios")
                        ],
                      ),

                      // )

                      TopicProgress(
                        progress: 0.7,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Hero(
              tag: "images/iglesia.png",
              child: Card(
                color: Colors.blueGrey,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DoctrinaCuatro(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'images/iglesia.png',
                        // fit: BoxFit.contain,
                        height: 120,
                        width: 200,
                        alignment: Alignment.center,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "¿Puedo creer en la iglesia?",
                                style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //Text("Aqui podras aprender quien es Dios")
                        ],
                      ),

                      // )

                      TopicProgress(
                        progress: 0.4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Hero(
              tag: "images/saludable.png",
              child: Card(
                color: Colors.green,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DoctrinaCinco(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'images/saludable.png',
                        // fit: BoxFit.contain,
                        height: 120,
                        width: 200,
                        alignment: Alignment.center,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "¿Es correcto mi estilo de vida?",
                                style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //Text("Aqui podras aprender quien es Dios")
                        ],
                      ),

                      // )

                      TopicProgress(
                        progress: 0.1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Hero(
              tag: "images/tierra.png",
              child: Card(
                color: Colors.redAccent,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DoctrinaSeis(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'images/tierra.png',
                        // fit: BoxFit.contain,
                        height: 120,
                        width: 200,
                        alignment: Alignment.center,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "¿Que esta pasando en el mundo?",
                                style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //Text("Aqui podras aprender quien es Dios")
                        ],
                      ),

                      // )

                      TopicProgress(
                        progress: 0.4,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Temas de Profundizacion",
              style: TextStyle(fontSize: 23, fontFamily: "Times New Roman"),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: Image.asset("images/birrete.png"),
          ),
          Container(
            child: Hero(
              tag: "images/familia.png",
              child: Card(
                color: Colors.purpleAccent,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DoctrinaSeis(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'images/familia.png',
                        // fit: BoxFit.contain,
                        height: 120,
                        width: 200,
                        alignment: Alignment.center,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "Vida Familiar",
                                style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //Text("Aqui podras aprender quien es Dios")
                        ],
                      ),

                      // )

                      TopicProgress(
                        progress: 0.5,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Hero(
              tag: "images/dinero.png",
              child: Card(
                color: Colors.yellow,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MayordomiaCristiana(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'images/dinero.png',
                        // fit: BoxFit.contain,
                        height: 120,
                        width: 200,
                        alignment: Alignment.center,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "Administracion de mis bienes",
                                style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //Text("Aqui podras aprender quien es Dios")
                        ],
                      ),

                      // )

                      TopicProgress(
                        progress: 0.4,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Hero(
              tag: "images/omega.png",
              child: Card(
                color: Colors.deepOrangeAccent[100],
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DoctrinaSeis(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'images/omega.png',
                        // fit: BoxFit.contain,
                        height: 120,
                        width: 200,
                        alignment: Alignment.center,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "¿Como entender las profecias?",
                                style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //Text("Aqui podras aprender quien es Dios")
                        ],
                      ),

                      // )

                      TopicProgress(
                        progress: 0.1,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Hero(
              tag: "images/graduado.png",
              child: Card(
                color: Colors.blue,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DoctrinaSeis(),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'images/graduado.png',
                        // fit: BoxFit.contain,
                        height: 120,
                        width: 200,
                        alignment: Alignment.center,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "Orientacion Vocacional",
                                style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //Text("Aqui podras aprender quien es Dios")
                        ],
                      ),

                      // )

                      TopicProgress(
                        progress: 0.4,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopicProgress extends StatelessWidget {
  final double progress;
  TopicProgress({Key key, @required this.progress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LinearProgressIndicator(
        value: progress,
        backgroundColor: Colors.grey[100],
        valueColor: AlwaysStoppedAnimation<Color>(Colors.lightGreenAccent),
        minHeight: 20,
      ),
    );
  }
}
