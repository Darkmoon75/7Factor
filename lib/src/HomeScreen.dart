import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tutores.dart';
import 'clases.dart';
import 'foro.dart';
import 'perfil.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Clases(),
    Foro(),
    Tutores(),
    Perfil(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.class_),
              title: Text('Mis Clases'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bullhorn),
              title: Text('Foro'),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userGraduate),
              title: Text('Tutores'),
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              title: Text('Mi Perfil'),
              backgroundColor: Colors.blueAccent),
        ],
      ),
    );
  }
}
