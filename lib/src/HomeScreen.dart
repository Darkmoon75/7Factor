import 'package:flutter/material.dart';
import 'foro.dart';
import 'clases.dart';
import 'tutores.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'progress.dart';
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:seven_hub/src/chat/Pages/ChattingPage.dart';
import 'package:seven_hub/src/chat/models/user.dart';
import 'package:seven_hub/src/chat/Widgets/ProgressWidget.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'profile.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Splash.dart';

class HomeScreen extends StatefulWidget {
  final String currentUserId;

  HomeScreen({Key key, @required this.currentUserId}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _children = [
    Clases(),
    Tutores(),
    Progress(),
    Settings(),
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
              title: Text('Lessons'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userGraduate),
              title: Text('Mentor'),
              backgroundColor: Colors.lightGreen),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.award),
              title: Text('Progress'),
              backgroundColor: Colors.redAccent),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              title: Text('Profile'),
              backgroundColor: Colors.orangeAccent),
        ],
      ),
    );
  }
}
