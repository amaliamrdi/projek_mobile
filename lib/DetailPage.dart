import 'package:flutter/material.dart';
import 'models/tempatWisata.dart';

class DetailPage extends StatelessWidget {
  final TempatWisata tempat;

  DetailPage(this.tempat);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Wisata'),
        backgroundColor: Color(0xFF20B4BC),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(left: 4, right: 4, top: 4),
                child: Image.asset(
                  tempat.gambar,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 4, right: 4, top: 4),
                color: Color(0xFF20B4BC),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Text(
                    tempat.nama,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          tempat.lokasi,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft, 
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.attach_money, 
                        color: Colors.green,
                      ),
                      SizedBox(width: 16),
                      Text(
                        'Rp'+tempat.htm,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft, 
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Text(
                    "Deskripsi :",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                child: Text(
                  tempat.deskripsi,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
