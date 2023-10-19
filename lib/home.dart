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
            Container(
              width: double
                  .infinity, // Mengatur lebar Container menjadi penuh lebar layar
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: Color(0xFF20B4BC),
              ),
              child: Padding(
                padding: EdgeInsets.all(12), // Menambahkan padding horizontal
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daftar Wisata Sumbawa',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            homeList(),
          ],
        ),
      ),
    );
  }
}
