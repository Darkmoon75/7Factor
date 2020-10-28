import 'package:flutter/material.dart';
import 'tutores.dart';
import 'clases.dart';
import 'foro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_hub/src/LoginScreen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'ProfileScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _children = [
    Clases(),
    Foro(),
    Tutores(),
  ];

  int _currentIndex = 0;

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
              icon: Icon(FontAwesomeIcons.award),
              title: Text('Progreso'),
              backgroundColor: Colors.blueAccent),
        ],
      ),
    );
  }
}
