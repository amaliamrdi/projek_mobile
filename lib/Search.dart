import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Stack(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  color: Color(0xFF20B4BC),
                  size: 24,
                ),
                hintText: 'Cari Tempat Wisata',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(
                      color: Color(
                          0xFF20B4BC)), 
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: Container(
                child: const Icon(
                  Icons.mic_outlined,
                  size: 24,
                  color: Color(0xFF20B4BC),
                ),
              ),
            )
          ],
        ),
      );
  }
}
