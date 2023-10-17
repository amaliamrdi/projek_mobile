import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import SystemChrome
import 'home.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Atur StatusBar menjadi transparan
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/get-started.png', // Ganti dengan path gambar Anda
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 78.0, // Jarak 82px dari bawah
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF20B4BC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(168, 56), // Atur ukuran tombol di sini
                ),
                onPressed: () {
                  // Kembali ke pengaturan StatusBar sebelumnya
                  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                    statusBarColor:
                        Color(0xFF20B4BC), // Ganti dengan warna StatusBar sebelumnya
                  ));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18, // Atur ukuran teks di sini
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
