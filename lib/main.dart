import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'home.dart';
import 'get_started.dart'; // Impor file get_started.dart

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF20B4BC),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Wisata Sumbawa',
      home: GetStartedPage(), // Menggunakan GetStartedPage
    );
  }
}
