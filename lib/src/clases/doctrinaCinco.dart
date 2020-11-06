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
          Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: ListView(
                children: <Widget>[
                  Image.asset('images/law.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "¿Ley de Dios?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Text(
                      "Los grandes principios de la ley de Dios están incorporados en los Diez Manda­mientos y ejemplificados en la vida de Cristo. Expresan el amor, la voluntad y el propósito de Dios con respecto a la conducta y a las relaciones humanas, y son obligatorios para todas las personas en todas las épocas. Estos preceptos constituyen la base del pacto de Dios con su pueblo y son la norma del juicio divino. Por medio de la obra del Espíritu Santo, señalan el pecado y despiertan el sentido de la necesidad de un Salvador. La salvación es totalmente por la gracia y no por las obras, pero su fruto es la obediencia a los mandamientos. Esta obediencia desarrolla el carácter cristiano y da como resultado una sensación de bienestar. Es una evidencia de nuestro amor al Señor y de nuestra preocupación por nuestros semejantes. La obediencia por fe demuestra el poder de Cristo para transformar vidas y, por lo tanto, fortalece el testimonio cristiano."),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('images/people.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        " ¿Como se comporta un Cristiano?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Text(
                      "Somos llamados a ser un pueblo piadoso que piense, sienta y actúe en armo­nía con los principios del cielo. Para que el Espíritu recree en nosotros el carácter de nuestro Señor, nos involucramos sólo en aquellas cosas que producirán en nuestra vida pureza, salud y gozo cristiano. Esto significa que nuestras recreaciones y nuestros entretenimientos estarán en armonía con las más elevadas normas de gusto y belleza cristianos. Si bien reconocemos las diferencias culturales, nuestra vestimenta debiera ser sencilla, modesta y de buen gusto, como corresponde a aquellos cuya verdadera belleza no consiste en el adorno exterior, sino en el inmarcesible ornamento de un espíritu apacible y tranquilo. Significa también que, puesto que nuestros cuerpos son el templo del Espíritu Santo, debemos cuidarlos inteligentemente. Junto con la práctica adecuada del ejercicio y el descanso, debemos adoptar un régimen alimentario lo más saludable posible, y abstenernos de los alimentos inmun­dos, identificados como tales en las Escrituras. Como las bebidas alcohólicas, el tabaco y el uso irresponsable de drogas y narcóticos son dañinos para nuestros cuerpos, debemos también abstenernos de ellos. En cambio, debemos empeñarnos en todo lo que ponga nuestros pensamientos y nuestros cuerpos en armonía con la disciplina de Cristo, quien quiere que gocemos de salud, de alegría y de todo lo bueno."),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
