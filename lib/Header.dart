import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF20B4BC),
      child: Container(
        margin: EdgeInsets.fromLTRB(24, 8, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, 
              children: [
                Text(
                  'Selamat Datang',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 22,
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   ),
                ),
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(
                    'assets/images/profile.jpg',
                  ),
                ),
              ],
            ),
            Text(
              'Mau Healing Ke Mana Hari Ini?',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
