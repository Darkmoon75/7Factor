import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Foro extends StatefulWidget {
  Foro({Key key}) : super(key: key);

  @override
  _ForoState createState() => _ForoState();
}

class _ForoState extends State<Foro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text(
          'Foro',
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              width: 200,
              height: 200,
              child: FlareActor(
                "images/messages.flr",
                animation: "go",
              ),
            ),
            foregroundColor: Colors.white,
          ),
          title: Text(name),
          subtitle: Text(description),
        ),
      ),
      actions: <Widget>[
        IconSlideAction(
          caption: 'Archive',
          color: Colors.blue,
          icon: Icons.archive,
          onTap: () => _showSnackBar('Archive'),
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'More',
          color: Colors.black45,
          icon: Icons.more_horiz,
          onTap: () => _showSnackBar('More'),
        ),
        IconSlideAction(
          caption: 'Chat',
          color: Colors.green,
          icon: Icons.message,
          onTap: () => _showSnackBar('Delete'),
        ),
      ],
    );
  }

  _showSnackBar(String s) {}
}
