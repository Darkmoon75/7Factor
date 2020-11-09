import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_hub/src/HomeScreen.dart';
import 'package:seven_hub/src/clases.dart';

class DoctrinaDos extends StatefulWidget {
  DoctrinaDos({Key key}) : super(key: key);

  @override
  _DoctrinaDosState createState() => _DoctrinaDosState();
}

class _DoctrinaDosState extends State<DoctrinaDos> {
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
          "¿Cual es mi naturaleza?",
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
          Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: ListView(
                children: <Widget>[
                  Image.asset('images/creacion.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "¿Como se creo todo?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Text(
                      "Dios es el Creador de todas las cosas, y reveló en las Escrituras el relato auténtico de su actividad creadora. El Señor hizo en seis días “los cielos y la tierra” y todo ser viviente que la habita, y reposó en el séptimo día de esa primera semana. De ese modo estableció el sábado como un monumento perpetuo conmemorativo de la terminación de su obra creadora. Hizo al primer hombre y la primera mujer a su imagen como corona de la creación, y les dio dominio sobre el mundo y la responsabilidad de cuidar de él. Cuando el mundo quedó terminado era “bueno en gran manera”, proclamando la gloria de Dios."),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('images/hombre.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "¿Somos malos por naturaleza?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Text(
                      "Dios hizo al hombre y la mujer a su imagen, con individualidad propia, y con la facultad y la libertad de pensar y obrar. Aunque los creó como seres libres, cada uno es una unidad indivisible de cuerpo, mente y espíritu, que depende de Dios para la vida, el aliento y todo lo demás. Cuando nuestros primeros padres desobedecieron a Dios, negaron su dependencia de él y cayeron de la elevada posición que ocupaban bajo el gobierno de Dios. La imagen de Dios en ellos se desfiguró y quedaron sujetos a la muerte. Sus descendientes participan de esta naturaleza caída y de sus consecuencias. Nacen con debilidades y tendencias hacia el mal. Pero Dios, en Cristo, reconcilió al mundo consigo mismo y, por medio de su Espíritu Santo, restaura en los mortales penitentes la imagen de su Hacedor. Creados para la gloria de Dios, se los llama a amarlo a él y a amarse mutuamente, y a cuidar del ambiente que los rodea."),
                ],
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizDoctrinaDos(),
              ));
        },
        label: Text('Activity'),
        icon: Icon(FontAwesomeIcons.pencilAlt),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class QuizDoctrinaDos extends StatefulWidget {
  QuizDoctrinaDos({Key key}) : super(key: key);

  @override
  _QuizDoctrinaDosState createState() => _QuizDoctrinaDosState();
}

class _QuizDoctrinaDosState extends State<QuizDoctrinaDos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Leccion 2"),
      ),
      body: Center(
          child: QuizView(
        image: Container(
          width: 150,
          height: 150,
          child: Image.asset("images/question2.jpg"),
        ),
        showCorrect: true,
        tagBackgroundColor: Colors.blue,
        tagColor: Colors.black,
        questionTag: "Pregunta 1",
        answerColor: Colors.white,
        answerBackgroundColor: Color.fromARGB(255, 250, 18, 18),
        questionColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 133, 148, 169),
        width: 300,
        height: 600,
        question: "¿Qué es pecado? 1 Juan 3:4",
        rightAnswer: "Infraccion de la ley",
        wrongAnswers: ["El amor al dinero", "Decir mentiras"],
        onRightAnswer: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
        },
        onWrongAnswer: () => print("Wrong"),
      )),
    );
  }
}
