import 'package:flutter/material.dart';
import 'package:projek_mobile/homeList.dart';
import 'package:projek_mobile/Header.dart';
import 'package:projek_mobile/Search.dart';
import 'package:projek_mobile/CategoryList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 16),
            Search(),
            SizedBox(height: 16),
            CategoryList(),
            SizedBox(height: 16),
            homeList(),
          ],
        ),
      ),
    );
  }
}
