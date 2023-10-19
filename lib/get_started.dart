import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'home.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/get-started.png', 
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 78.0, 
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF20B4BC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(168, 56), 
                ),
                onPressed: () {
                  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                    statusBarColor:
                        Color(0xFF20B4BC), 
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
                    fontSize: 18, 
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
