import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'Latihan Kuis Prak Mobile',
      theme: ThemeData(primarySwatch: Colors.blue, ),
      home:  LoginPage(),
    );
  }
}