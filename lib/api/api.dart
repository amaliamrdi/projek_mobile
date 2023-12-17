import 'dart:convert';
import 'package:projek_mobile/models/tempatWisata.dart';
import 'package:projek_mobile/constants.dart';
import 'package:http/http.dart' as http;
// import 'package:projek_mobile/dataWisata.dart';

class Api {
  static const _wisataUrl =
      'https://sumbawa-5a623-default-rtdb.firebaseio.com/wisata.json?auth=${Constants.apiKey}';

  Future<List<TempatWisata>> getAllWisata() async {
    try {
      final response = await http.get(Uri.parse(_wisataUrl));

      if (response.statusCode == 200) {
        final dynamic decodedData = json.decode(response.body);

        if (decodedData != null) {
          final List<TempatWisata> results = decodedData.values
              .map<TempatWisata>((tempat) => TempatWisata.fromJson(tempat))
              .toList();

          return results;
        } else {
          throw Exception('Invalid data format');
        }
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<List<TempatWisata>> getWisataByCategory(String category) async {
    final respone = await http.get(Uri.parse(_wisataUrl));
    if (respone.statusCode == 200) {
      final allWisata = await getAllWisata();
      List<TempatWisata> filteredWisata = allWisata
          .where((tempat) =>
              tempat.kategori.toLowerCase() == category.toLowerCase())
          .toList();

      return filteredWisata;
    } else {
      throw Exception('Something happend');
    }
  }
}
