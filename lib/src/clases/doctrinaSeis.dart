import 'package:flutter/material.dart';
import 'package:seven_hub/src/HomeScreen.dart';
import 'package:video_player/video_player.dart';

class DoctrinaSeis extends StatefulWidget {
  DoctrinaSeis({Key key}) : super(key: key);

  @override
  _DoctrinaSeisState createState() => _DoctrinaSeisState();
}

class _DoctrinaSeisState extends State<DoctrinaSeis> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.asset("images/video1.mkv")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }

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
          "¿Que esta pasando en el mundo?",
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
                  AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        child: (playerController != null
                            ? VideoPlayer(
                                playerController,
                              )
                            : Container()),
                      )),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Pasara algo inminente",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Text(
                      "La segunda venida de Cristo es la bienaventurada esperanza de la iglesia, la gran culminación del evangelio. La venida del Salvador será literal, personal, visible y de alcance mundial. Cuando el Señor regrese, los justos muertos resucitarán y, junto con los justos que estén vivos, serán glorifica­dos y llevados al cielo, pero los impíos morirán. El hecho de que la mayor parte de las profecías esté alcanzando su pleno cumplimiento, unido a las actuales condiciones del mundo, nos indica que la venida de Cristo es inminente. El momento cuando ocurrirá este acontecimiento no ha sido revelado, y por lo tanto se nos exhorta a estar preparados en todo tiempo."),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createVideo();
          playerController.play();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
