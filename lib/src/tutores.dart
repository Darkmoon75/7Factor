import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Tutores extends StatefulWidget {
  Tutores({Key key}) : super(key: key);

  @override
  _TutoresState createState() => _TutoresState();
}

class _TutoresState extends State<Tutores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                tutores('Laico#1', 'Experto en Familia', 'images/avatar1.png'),
                tutores('Laico#2', 'Experto en Profecia', 'images/avatar2.png'),
                tutores('Laico#3', 'Experto en Jovenes', 'images/avatar3.png'),
                tutores('Laico#4', 'Experto en Niños', 'images/avatar4.png'),
                tutores('Laico#5', 'Experto en Antiguo Testamento',
                    'images/avatar2.png'),
                tutores('Laico#6', 'Experto en Salud', 'images/avatar1.png'),
                tutores('Laico#7', 'Experto en Noviazgo', 'images/avatar4.png'),
                tutores('Laico#8', 'Experto en Nuevo Testamento',
                    'images/avatar3.png'),
              ],
            )
          ],
        ));
  }

  Widget tutores(String name, String description, String image) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.indigoAccent,
            child: Image.asset(
              image,
              height: 50,
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
