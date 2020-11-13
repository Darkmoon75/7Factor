import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_hub/src/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:sweetalert/sweetalert.dart';
import 'package:seven_hub/src/clases.dart';

class DoctrinaUno extends StatefulWidget {
  DoctrinaUno({Key key}) : super(key: key);

  @override
  _DoctrinaUnoState createState() => _DoctrinaUnoState();
}

class _DoctrinaUnoState extends State<DoctrinaUno> {
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
          "¿Quien es Dios?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: ListView(
                children: <Widget>[
                  Image.asset('images/bible.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "¿Se puede creer en la biblia?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Text(
                        "Las Sagradas Escrituras, que abarcan el Antiguo y el Nuevo Testamento, constituyen la Palabra de Dios escrita, transmitida por inspi­ración divina mediante santos hombres de Dios que hablaron y escribieron impulsados por el Espíritu Santo. Por medio de esta Palabra, Dios comunica a los seres humanos el conocimiento necesario para alcanzar la salvación. Las Sagradas Escrituras son la infalible revelación de la voluntad divina. Son la norma del carácter, el criterio para evaluar la experiencia, la revel­ación autorizada de las doctrinas, y un registro fidedigno de los actos de Dios realizados en el curso de la historia.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('images/trinity.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "¿Cuantos Dioses hay?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Text(
                        "Hay un solo Dios: Padre, Hijo y Espíritu Santo, una unidad de tres personas coeternas. Dios es inmortal, todopoderoso, omnisapiente, superior a todos y omnipresente. Es infinito y escapa a la comprensión humana, aunque se lo puede conocer por medio de su autorrevelación. Es digno para siempre de reverencia, adoración y servicio por parte de toda la creación.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('images/padre.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Dios Padre",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Text(
                        "Dios, el Padre Eterno es el Creador, Originador, Sustentador y Soberano de toda la creación. Es justo y santo, misericordioso y clemente, tardo en airarse y abundante en amor y fidelidad. Las cualidades y las facultades del Padre se manifiestan también en el Hijo y en el Espíritu Santo.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizUno(),
              ));
        },
        label: Text('Activity'),
        icon: Icon(FontAwesomeIcons.pencilAlt),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class QuizUno extends StatefulWidget {
  QuizUno({Key key}) : super(key: key);

  @override
  _QuizUnoState createState() => _QuizUnoState();
}

class _QuizUnoState extends State<QuizUno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Lesson 1"),
      ),
      body: Center(
          child: QuizView(
              image: Container(
                width: 150,
                height: 150,
                child: Image.asset("images/question1.jpg"),
              ),
              showCorrect: false,
              tagBackgroundColor: Colors.blueAccent,
              tagColor: Colors.black,
              questionTag: "Question 1",
              answerColor: Colors.white,
              answerBackgroundColor: Color(0xff0d47a1),
              questionColor: Colors.white,
              backgroundColor: Color(0xffc2d9ff),
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.height - 130,
              question: "¿Cuántos dioses hay? Efesios 4:6",
              rightAnswer: "Hay un solo Dios",
              wrongAnswers: ["Hay muchos dioses", "Dos dioses"],
              onRightAnswer: () {
                SweetAlert.show(context,
                    title: "Excellent",
                    subtitle: "Correct Answer",
                    confirmButtonText: "Go to next question",
                    confirmButtonColor: Colors.green,
                    style: SweetAlertStyle.success);
                new Future.delayed(new Duration(seconds: 2), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizDos(),
                      ));
                });
              },
              onWrongAnswer: () {
                SweetAlert.show(context,
                    title: "Oh no!",
                    subtitle: "Wrong answer",
                    confirmButtonText: "Try Again!",
                    confirmButtonColor: Colors.red,
                    style: SweetAlertStyle.error);
              })),
    );
  }
}

class QuizDos extends StatefulWidget {
  QuizDos({Key key}) : super(key: key);

  @override
  _QuizDosState createState() => _QuizDosState();
}

class _QuizDosState extends State<QuizDos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Lesson 1"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: QuizView(
              image: Container(
                width: 150,
                height: 150,
                child: Image.asset("images/question1.jpg"),
              ),
              showCorrect: false,
              tagBackgroundColor: Colors.blueAccent,
              tagColor: Colors.black,
              questionTag: "Question 2",
              answerColor: Colors.white,
              answerBackgroundColor: Color(0xff0d47a1),
              questionColor: Colors.white,
              backgroundColor: Color(0xffc2d9ff),
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.height - 130,
              question: "¿Cuál es la naturaleza de Dios? Juan 4:24",
              wrongAnswers: ["De naturaleza carnal", "De naturaleza fisica"],
              rightAnswer: "De naturaleza espiritual",
              onRightAnswer: () {
                SweetAlert.show(context,
                    title: "Excellent",
                    subtitle: "Correct Answer",
                    confirmButtonText: "Go to next question",
                    confirmButtonColor: Colors.green,
                    style: SweetAlertStyle.success);
                new Future.delayed(new Duration(seconds: 2), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DoctrinaUno(),
                      ));
                });
              },
              onWrongAnswer: () {
                SweetAlert.show(context,
                    title: "Oh no!",
                    subtitle: "Wrong answer",
                    confirmButtonText: "Try Again!",
                    confirmButtonColor: Colors.red,
                    style: SweetAlertStyle.error);
              })),
    );
  }
}
