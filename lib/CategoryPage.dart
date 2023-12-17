import 'package:flutter/material.dart';
import 'package:projek_mobile/models/tempatWisata.dart';
import 'DetailPage.dart';
import 'api/api.dart'; // Import your Api class

class CategoryPage extends StatelessWidget {
  final String category;
  CategoryPage(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori $category'),
        backgroundColor: Color(0xFF20B4BC),
      ),
      body: FutureBuilder<List<TempatWisata>>(
        future: category == 'Lebih'
            ? Api().getAllWisata()
            : Api().getWisataByCategory(category),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text(
                category == 'Lebih'
                    ? 'Tidak ada data untuk kategori ini.'
                    : 'Tidak ada data untuk kategori $category.',
              ),
            );
          }

          List<TempatWisata> categoryItems = snapshot.data!;

          return ListView.builder(
            itemCount: categoryItems.length,
            itemBuilder: (context, index) {
              TempatWisata tempat = categoryItems[index];
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
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Color(0xFF20B4BC), width: 2.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Rp ' + tempat.htm,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
          );
        },
      ),
    );
  }
}
