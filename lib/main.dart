import 'package:flutter/material.dart';
import 'package:pamolandingpage/screen/landinggpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pamo Landing Page',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const LandingPage(),
    );
  }
}