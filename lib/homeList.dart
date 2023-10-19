import 'package:flutter/material.dart';
import 'dataWisata.dart';
import 'DetailPage.dart';

class homeList extends StatefulWidget {
  @override
  _homeListState createState() => _homeListState();
}

class _homeListState extends State<homeList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(16), 
          //   topRight: Radius.circular(16),
          // ),
          color: Color(0xFF20B4BC),
        ),
        child: ListView.builder(
          itemCount: daftarTempatWisata.length,
          itemBuilder: (context, index) {
            TempatWisata tempat = daftarTempatWisata[index];
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailPage(tempat),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)), 
                  border: Border.all(color: Colors.white, width: 0.5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)), 
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 120.0,
                          child: AspectRatio(
                            aspectRatio: 3 / 2,
                            child: Image.asset(
                              tempat.gambar,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 120.0,
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tempat.nama,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'Rp ${tempat.htm.toStringAsFixed(0)}',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Icon(
                                        Icons.location_on,
                                        color: Colors.red,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                      child: Text(
                                        tempat.lokasi,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
