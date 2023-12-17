class TempatWisata {
  final String gambar;
  final String nama;
  final String deskripsi;
  final String kategori;
  final String lokasi;
  final String htm;

  TempatWisata({
    required this.gambar,
    required this.nama,
    required this.deskripsi,
    required this.kategori,
    required this.lokasi,
    required this.htm,
  });

  factory TempatWisata.fromJson(Map<String, dynamic> json) {
    return TempatWisata(
      gambar: json['gambar'],
      nama: json['nama'],
      deskripsi: json['deskripsi'] ,
      kategori: json['kategori'],
      lokasi: json['lokasi'],
      htm: json['htm'], 
    );
  }
}

