import 'package:flutter/material.dart';
import 'package:seven_hub/src/HomeScreen.dart';

class DoctrinaCuatro extends StatefulWidget {
  DoctrinaCuatro({Key key}) : super(key: key);

  @override
  _DoctrinaCuatroState createState() => _DoctrinaCuatroState();
}

class _DoctrinaCuatroState extends State<DoctrinaCuatro> {
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
          "¿Puedo creer en la iglesia?",
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
                  Image.asset('images/charla.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Crecer en Cristo",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Text(
                      "Jesús triunfó sobre las fuerzas del mal por su muerte en la cruz. Quien subyugó los espíritus demoníacos durante su ministerio terrenal, quebrantó su poder y aseguró su destrucción definitiva. La victoria de Jesús nos da la victoria sobre las fuerzas malignas que todavía buscan controlarnos y nos permite andar con él en paz, gozo y la certeza de su amor. El Espíritu Santo ahora mora dentro de nosotros y nos da poder. Al estar continuamente comprometidos con Jesús como nuestro Salvador y Señor, somos librados de la carga de nuestros actos pasados. Ya no vivimos en la oscuridad, el temor a los poderes malignos, la ignorancia ni la falta de sentido de nuestra antigua manera de vivir. En esta nueva libertad en Jesús, somos invitados a desarro­llarnos en semejanza a su carácter, en comunión diaria con él por medio de la oración, alimentándonos con su Palabra, meditando en ella y en su providencia, cantando alabanzas a él, reuniéndonos para adorar y partici­pando en la misión de la iglesia. Al darnos en servicio amante a quienes nos rodean y al testificar de la salvación, la presencia constante de Jesús por medio del Espíritu transforma cada momento y cada tarea en una experien­cia espiritual."),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('images/igle.jpg'),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        " ¿Que es la Iglesia?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Text(
                      "La iglesia es la comunidad de creyentes que confiesan que Jesucristo es Señor y Salvador. Como continuadores del pueblo de Dios del Antiguo Testamento, se nos invita a salir del mundo; y nos reunimos para adorar, para estar en comunión unos con otros, para recibir instrucción en la Palabra, para la celebración de la Cena del Señor, para servir a toda la humanidad y para proclamar el evangelio en todo el mundo. La iglesia recibe su autoridad de Cristo, que es la Palabra encarnada, y de las Escrituras, que son la Palabra escrita. La iglesia es la familia de Dios; somos adoptados por él como hijos, vivimos sobre la base del nuevo pacto. La iglesia es el cuerpo de Cristo, es una comunidad de fe, de la cual Cristo mismo es la cabeza. La iglesia es la esposa por la cual Cristo murió para poder santificarla y purificarla. Cuando regrese en triunfo, él presentará a sí mismo una iglesia gloriosa, los fieles de todas las edades, adquiridos por su sangre, una iglesia sin mancha, ni arruga, sino santa y sin defecto."),
                  SizedBox(
                    height: 20,
                  ),
                  Checkbox(value: null, onChanged: null)
                ],
              ))
        ],
      ),
    );
  }
}
