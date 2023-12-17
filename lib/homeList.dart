import 'package:flutter/material.dart';
import 'package:projek_mobile/models/tempatWisata.dart';
import 'DetailPage.dart';
import 'api/api.dart';

class homeList extends StatefulWidget {
  final TextEditingController searchController;

  const homeList({Key? key, required this.searchController}) : super(key: key);

  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<homeList> {
  final Api api = Api();
  late List<TempatWisata> allData;
  late List<TempatWisata> filteredData;

  @override
  void initState() {
    super.initState();
    api.getAllWisata().then((data) {
      setState(() {
        allData = data;
        filteredData = allData;
      });
    });
    widget.searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    widget.searchController.removeListener(_onSearchChanged);
    super.dispose();
  }

  void _onSearchChanged() {
    String query = widget.searchController.text.toLowerCase();
    List<TempatWisata> filtered = allData.where((tempat) {
      return tempat.nama.toLowerCase().contains(query);
    }).toList();

    setState(() {
      filteredData = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF20B4BC),
        ),
        child: ListView.builder(
          itemCount: filteredData.length,
          itemBuilder: (context, index) {
            TempatWisata tempat = filteredData[index];
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
