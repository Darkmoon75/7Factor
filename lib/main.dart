import 'package:flutter/material.dart';
import 'package:seven_hub/src/Splash.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Splash(),
    title: 'Nombre de la App',
    debugShowCheckedModeBanner: false,
  ));
}
