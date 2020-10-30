import 'package:flutter/material.dart';
import 'package:seven_hub/src/HomeScreen.dart';
import 'package:seven_hub/src/clases.dart';

class DoctrinaTres extends StatefulWidget {
  DoctrinaTres({Key key}) : super(key: key);

  @override
  _DoctrinaTresState createState() => _DoctrinaTresState();
}

class _DoctrinaTresState extends State<DoctrinaTres> {
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
          "¿Aun hay Esperanza?",
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
                  Image.asset('images/conflicto.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "El Gran Conflicto Cosmico",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Text(
                      "Toda la humanidad está ahora envuelta en un gran conflicto entre Cristo y Satanás en cuanto al carácter de Dios, su ley y su soberanía sobre el uni­verso. Este conflicto se originó en el cielo cuando un ser creado, dotado de libre albedrío, se exaltó a sí mismo y se convirtió en Satanás, el adversario de Dios, y condujo a la rebelión a una parte de los ángeles. Satanás in­trodujo el espíritu de rebelión en este mundo cuando indujo a Adán y a Eva a pecar. El pecado humano produjo como resultado la distorsión de la imagen de Dios en la humanidad, el trastorno del mundo creado y, posteri­ormente, su completa devastación en ocasión del diluvio universal. Obser­vado por toda la creación, este mundo se convirtió en el campo de batalla del conflicto universal, a cuyo término el Dios de amor quedará finalmente vindicado. Para ayudar a su pueblo en este conflicto, Cristo envía al Espíritu Santo y los ángeles leales para guiarlo, protegerlo y sostenerlo en el camino de la salvación."),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('images/jesusVida.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        " La vida, muerte y resurrección de Cristo",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Text(
                      "Mediante la vida de Cristo, de perfecta obediencia a la voluntad de Dios, y en sus sufrimientos, su muerte y su resurrección, Dios proveyó el único medio para expiar el pecado humano, de manera que los que por fe aceptan esta expiación puedan tener vida eterna, y toda la creación pueda comprender mejor el infinito y santo amor del Creador. Esta expiación perfecta vindica la justicia de la ley de Dios y la benignidad de su carácter; porque no solo con­dena nuestro pecado sino también nos garantiza nuestro perdón. La muerte de Cristo es vicaria y expiatoria, reconciliadora y transformadora. La resurrec­ción de Cristo proclama el triunfo de Dios sobre las fuerzas del mal, y asegura la victoria final sobre el pecado y la muerte a los que aceptan la expiación. Ella declara el señorío de fesucristo, ante quien se doblará toda rodilla en el Cielo y en la Tierra"),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('images/abrazo.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "¿Puedo experimentar la salvacion?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Text(
                      "Con amor y misericordia infinitos Dios hizo que Cristo, que no conoció pecado, fuera hecho pecado por nosotros, para que nosotros pudiésemos ser hechos justicia de Dios en él. Guiados por el Espíritu Santo sentimos nuestra necesi­dad, reconocemos nuestra pecaminosidad, nos arrepentimos de nuestras transgresiones, y ejercemos fe en Jesús como Señor y Cristo, como sustituto y ejemplo. Esta fe que acepta la salvación nos llega por medio del poder divino de la Palabra y es un don de la gracia de Dios. Mediante Cristo somos justifi­cados, adoptados como hijos e hijas de Dios y librados del dominio del pecado. Por medio del Espíritu nacemos de nuevo y somos santificados; el Espíritu renueva nuestras mentes, graba la ley de amor de Dios en nuestros corazones y nos da poder para vivir una vida santa. Al permanecer en él somos participantes de la naturaleza divina y tenemos la seguridad de la salvación ahora y en ocasión del juicio."),
                ],
              ))
        ],
      ),
    );
  }
}
