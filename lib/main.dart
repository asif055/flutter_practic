import 'package:flutter/material.dart';
import 'home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp UI',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(), //Here we called the HomeScreen of our App
    );
  }
}
