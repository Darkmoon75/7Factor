import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:seven_hub/src/HomeScreen.dart';
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
                  Text(
                      "Las Sagradas Escrituras, que abarcan el Antiguo y el Nuevo Testamento, constituyen la Palabra de Dios escrita, transmitida por inspi­ración divina mediante santos hombres de Dios que hablaron y escribieron impulsados por el Espíritu Santo. Por medio de esta Palabra, Dios comunica a los seres humanos el conocimiento necesario para alcanzar la salvación. Las Sagradas Escrituras son la infalible revelación de la voluntad divina. Son la norma del carácter, el criterio para evaluar la experiencia, la revel­ación autorizada de las doctrinas, y un registro fidedigno de los actos de Dios realizados en el curso de la historia."),
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
                  Text(
                      "Hay un solo Dios: Padre, Hijo y Espíritu Santo, una unidad de tres personas coeternas. Dios es inmortal, todopoderoso, omnisapiente, superior a todos y omnipresente. Es infinito y escapa a la comprensión humana, aunque se lo puede conocer por medio de su autorrevelación. Es digno para siempre de reverencia, adoración y servicio por parte de toda la creación."),
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
                  Text(
                      "Dios, el Padre Eterno es el Creador, Originador, Sustentador y Soberano de toda la creación. Es justo y santo, misericordioso y clemente, tardo en airarse y abundante en amor y fidelidad. Las cualidades y las facultades del Padre se manifiestan también en el Hijo y en el Espíritu Santo."),
                ],
              ))
        ],
      ),
    );
  }
}
