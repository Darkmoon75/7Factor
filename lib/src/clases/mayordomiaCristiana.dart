import 'package:flutter/material.dart';
import 'package:seven_hub/src/HomeScreen.dart';
class MayordomiaCristiana extends StatefulWidget {
  MayordomiaCristiana({Key key}) : super(key: key);

  @override
  _MayordomiaCristianaState createState() => _MayordomiaCristianaState();
}

class _MayordomiaCristianaState extends State<MayordomiaCristiana> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
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
          "¿Como debo administrar mis bienes?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
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
                  Image.asset('images/venida.jpg'),
                  
                ],
              ))
        ],
      ),
    )
    );
  }
}