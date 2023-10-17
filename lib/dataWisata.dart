class TempatWisata {
  final String nama;
  final String deskripsi;
  final String gambar;
  final String kategori;
  final String lokasi;
  final double htm;

  TempatWisata({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.kategori,
    required this.lokasi,
    required this.htm,
  });
}

List<TempatWisata> daftarTempatWisata = [
  TempatWisata(
    kategori: 'Pantai',
    nama: "Pantai Maluk",
    deskripsi: "Pantai Maluk adalah surga tersembunyi di Kecamatan Maluk,"
    " Kabupaten Sumbawa Barat, Nusa Tenggara Barat, Indonesia. Pantai ini"
    " menawarkan pasir putih lembut, air laut jernih, dan ombak yang cocok"
    " untuk berselancar. Terletak di eksotis Pulau Sumbawa, Pantai Maluk "
    "adalah tempat ideal untuk bersantai sambil menikmati matahari terbenam"
    " yang memukau. Selain alamnya yang memikat, Pantai Maluk dikelilingi"
    " oleh pedesaan ramah dan masyarakat hangat. Anda bisa menikmati hidangan "
    "lezat dari warung pantai lokal atau menjelajahi desa sekitarnya untuk "
    "merasakan budaya lokal. Pantai Maluk adalah destinasi wisata yang "
    "sempurna untuk melarikan diri dari hiruk-pikuk kota dan mengalami"
    " pesona alam Indonesia.",
    gambar: "assets/images/pantai-maluk.jpg",
    lokasi: "Desa Pasir Putih, Kec. Maluk, Kab. Sumbawa Barat, NTB",
    htm: 0, 
  ),
  TempatWisata(
    kategori: "Pulau",
    nama: "Pulau Kenawa",
    deskripsi: "Pulau Kenawa adalah salah satu destinasi wisata yang terkenal"
    " karena keindahan alamnya. Pulau ini menawarkan pantai berpasir putih,"
    " pemandangan laut yang spektakuler, serta peluang untuk beraktivitas"
    " seperti snorkeling dan diving. Pulau Kenawa bisa dijangkau dari pulau "
    "Sumbawa, dan merupakan salah satu destinasi wisata alam yang menarik di"
    " wilayah tersebut.",
    gambar: "assets/images/pulau-kenawa.jpg",
    lokasi: "Kec. Poto Tano Kab. Sumbawa Barat, NTB",
    htm: 50000, 
  ),
  TempatWisata(
    kategori: "Air Terjun",
    nama: "Air Terjun Kalela",
    deskripsi: "Air Terjun Kalela adalah sebuah air terjun indah yang terletak"
    " di Kabupaten Sumbawa Barat, Provinsi Nusa Tenggara Barat, Indonesia. Air"
    " terjun ini menawarkan pemandangan alam yang memukau, dengan air yang jernih"
    " dan suasana yang tenang. Tempat ini merupakan destinasi wisata alam yang ideal "
    "untuk menikmati keindahan alam dan bersantai di tengah lingkungan yang asri.",
    gambar: "assets/images/Air-Terjun-Kalela.jpeg",
    lokasi: "Desa Beru, Kec. Jereweh, Kab. Sumbawa Barat, NTB",
    htm: 0, 
  ),
  TempatWisata(
    kategori: "Pulau",
    nama: "Pulau Moyo",
    deskripsi: "Pulau Moyo adalah permata tersembunyi yang terletak di Kabupaten"
    " Sumbawa Barat, Nusa Tenggara Barat. Pulau ini adalah perwujudan keindahan"
    " alam yang memesona dengan pantai berpasir putih, pemandangan laut yang "
    "indah, serta berbagai aktivitas menyelam dan snorkeling yang luar biasa. "
    "Pulau ini juga dikelilingi oleh terumbu karang yang mempesona, menjadikannya"
    " surga bagi pecinta bawah air. Anda dapat menikmati keindahan alam yang memukau "
    "dan kehidupan bawah laut yang beragam. Selain itu, Pulau Moyo menawarkan suasana"
    " yang tenang dan terjauh dari keramaian kota, menjadikannya tempat ideal untuk "
    "bersantai dan menikmati keindahan alam",
    gambar: "assets/images/pulau-moyo.jpg",
    lokasi: "Kec. Labuhan Badas, Kab. Sumbawa, NTB",
    htm: 30000, 
  ),
  TempatWisata(
    kategori: "Pulau",
    nama: "Pulau Bungin",
    deskripsi: "Pulau ini terkenal dengan permukiman padat penduduknya yang memenuhi"
    " setiap sudut pulau, membuatnya terasa hidup dan penuh warna. Para penduduk Pulau"
    " Bungin bekerja dengan tekun dalam usaha perikanan, memasok beragam jenis hasil laut,"
    " seperti ikan dan lobster, ke sektor pariwisata di Lombok dan daerah sekitarnya. Anda"
    " dapat menjelajahi pulau ini, menelusuri jaring-jaring perikanan yang terhentang di"
    " lepas pantai, dan mendapatkan wawasan unik tentang kehidupan nelayan setempat.",
    gambar: "assets/images/pulau-bungin.jpg",
    lokasi: "Kec. Alas, Kab. Sumbawa, NTB",
    htm: 0, 
  ),
  TempatWisata(
    kategori: "Perbukitan",
    nama: "Bukit Mantar",
    deskripsi: "Menyatu dengan awan di ketinggian sekitar 600 meter di atas permukaan laut,"
    " Bukit Mantar, yang terletak di Desa Mantar, Kecamatan Poto Tano, Sumbawa Besar, "
    "mempersembahkan pemandangan matahari terbit yang akan merasuk ke dalam jiwa setiap"
    " pengunjungnya.Bukit Mantar bukan hanya sekadar destinasi wisata biasa; bukit ini "
    "juga dikenal sebagai pusat olahraga paralayang. Para pecinta petualangan bisa mengambil"
    " lompatan di sini, melayang di udara dan melintasi perbukitan hijau serta pantai yang"
    " memikat. Mantar bahkan pernah menjadi tuan rumah kompetisi paralayang tingkat"
    " internasional, mengundang peserta dari seluruh dunia.",
    gambar: "assets/images/mantar.jpg",
    lokasi: "Desa Mantar, Kec. Poto Tano, Kab.Sumbawa Barat, NTB",
    htm: 50000, 
  ),
  TempatWisata(
    kategori: "Sungai",
    nama: "Liang Bukal",
    deskripsi: "Liang Bukal adalah persembunyian alami yang menakjubkan dari hiruk-pikuk"
    " kehidupan kota, terletak sekitar 26 km dari pusat Kota Sumbawa Besar. Tempat ini "
    "adalah pilihan ideal bagi mereka yang ingin bermain air, tetapi ingin menjauh dari "
    "pantai. Ketika Anda memasuki Liang Bukal, petualangan dimulai dengan melewati gua "
    "sepanjang 200 meter yang dihuni ratusan kelelawar. Namun, jangan khawatir, "
    "pengalaman ini menambahkan sentuhan petualangan yang tak terlupakan. Begitu Anda keluar "
    "dari gua, Anda akan dihadapkan dengan pemandangan yang menakjubkan: sebuah sungai yang "
    "mengalir di antara tebing yang indah. Terutama saat musim hujan, kolam alami ini menjadi"
    " penuh, menciptakan suasana yang menenangkan dan menyegarkan.",
    gambar: "assets/images/liang-bukal.jpg",
    lokasi: "Desa Batutering, Kec. Moyo Hulu, Kab. Sumbawa, NTB",
    htm: 15000, 
  ),
  TempatWisata(
    kategori: "Air Terjun",
    nama: "Air Terjun Agal",
    deskripsi: "Air Terjun Agal adalah air terjun yang menawarkan pemandangan alam"
    " yang indah di Kabupaten Sumbawa Barat, Nusa Tenggara Barat. Air terjun"
    " ini adalah destinasi yang ideal bagi pecinta alam dan petualang. Anda "
    "dapat mengeksplorasi keindahan alam sekitar air terjun, mendengarkan gemuruh"
    " air yang jatuh, dan merasa kesegaran semprotan air. Tempat ini cocok untuk"
    " membangkitkan semangat petualangan dan menikmati keajaiban alam.",
    gambar: "assets/images/air-terjun-agal.jpg",
    lokasi: "Desa Marenteh, Kec. Alas, Kab. Sumbawa, NTB",
    htm: 0, 
  ),
  TempatWisata(
    kategori: "Pantai",
    nama: "Pantai Lawar",
    deskripsi: "Pantai Lawar terletak di Kecamatan Sekongkang, Kabupaten Sumbawa"
    " Barat, Nusa Tenggara Barat. Pantai ini adalah surga bagi pecinta pantai dan"
    " selancar. Dengan pasir putih yang lembut dan ombak yang cocok untuk berselancar,"
    " Pantai Lawar adalah tempat yang sempurna untuk bersantai, berjemur, atau mengejar"
    " ombak. Anda dapat menikmati momen matahari terbenam yang memukau di tepi pantai ini. "
    "Selain itu, pantai ini dikelilingi oleh keindahan alam dan pedesaan yang ramah.",
    gambar: "assets/images/pantai-lawar.jpg",
    lokasi: "Kec. Sekongkang, Kabupaten Sumbawa Barat, NTB",
    htm: 0, 
  ),
  TempatWisata(
    kategori: "Pulau",
    nama: "Pulau Bedil",
    deskripsi: "Pulau Kenawa adalah salah satu destinasi wisata yang terkenal"
    " karena keindahan alamnya. Pulau ini menawarkan pantai berpasir putih,"
    " pemandangan laut yang spektakuler, serta peluang untuk beraktivitas"
    " seperti snorkeling dan diving. Pulau Kenawa bisa dijangkau dari pulau "
    "Sumbawa, dan merupakan salah satu destinasi wisata alam yang menarik di"
    " wilayah tersebut.",
    gambar: "assets/images/pulau-bedil.jpg",
    lokasi: "Desa Labuan Bajo, Kec. Utan Kab. Sumbawa, NTB",
    htm: 50000, 
  ),
  TempatWisata(
    kategori: "Pantai",
    nama: "Pantai Kertasari",
    deskripsi: "Pantai Kertasari, terletak di Desa Labuhan Kertasari, Kecamatan "
    "Taliwang, Sumbawa Barat, adalah permata tersembunyi yang menanti untuk "
    "dijelajahi. Dengan air laut yang begitu jernih hingga wajah karang yang"
    " begitu jelas, pantai ini adalah tempat yang memanjakan mata dan jiwa. "
    "Menikmati matahari terbenam di atas cakrawala adalah pengalaman yang tak "
    "terlupakan di Pantai Kertasari. Pantai Kertasari juga telah dikenal di "
    "seluruh dunia sebagai surga peselancar. Dengan ombak yang cukup tinggi, "
    "pantai ini menjadi daya tarik utama bagi para peselancar.",
    gambar: "assets/images/pantai-kertasari.jpg",
    lokasi: "Desa Labuhan Kertasari, Kec. Taliwang, Kab. Sumbawa Barat, NTB",
    htm: 10000, 
  ),
  TempatWisata(
    kategori: "Pantai",
    nama: "Pantai Poto Batu",
    deskripsi: "Pantai Poto Batu, terletak tepat di sepanjang jalan dan hanya"
    " berjarak sekitar 10 menit dari Taliwang, ibu kota Kabupaten Sumbawa Barat,"
    " menyajikan pengalaman yang sederhana namun menenangkan. Meskipun pantainya"
    " tidak memiliki ciri khas yang luar biasa, kehadiran batu berlubang dan"
    " pasir berwarna hitam memberikan daya tarik tersendiri. Pantai Poto Batu "
    "adalah tempat yang sempurna untuk melarikan diri sejenak dari hiruk-pikuk "
    "keseharian. Suara ombak yang berirama dan hembusan angin sejuk menjadi"
    " pengobat penat, membawa kedamaian dan ketenangan saat Anda menikmati "
    "pemandangan laut yang tenang. Meskipun sederhana, keindahan alamnya akan"
    " membuat Anda merasa terhubung kembali dengan alam dan merasakan ketenangan batin.",
    gambar: "assets/images/poto-batu.png",
    lokasi: "Desa Labuhan Kertasari, Kec. Taliwang, Kab. Sumbawa Barat, NTB",
    htm: 0, 
  ),
  TempatWisata(
    kategori: "Pantai",
    nama: "Pantai Labuhanpade",
    deskripsi: "Pantai Labuhanpade, atau sering disebut Lapade, adalah destinasi"
    " eksotis di Sumbawa yang menawarkan pemandangan alam yang indah. Dikelola"
    " dengan baik, pantai ini sangat bersih dan asri, menjadikannya tempat"
    " yang sempurna untuk bersantai dengan orang-orang tercinta. Anda dapat "
    "menikmati suasana tenang sambil menikmati pohon-pohon mangga yang tumbuh di"
    " sepanjang pantai. Lapade juga dilengkapi dengan berbagai fasilitas pendukung,"
    " termasuk wahana bermain untuk anak-anak, makanan lezat seperti ikan bakar, "
    "serta berbagai fasilitas seperti beruga, toilet, musala, dan lainnya. "
    "Terdapat panggung hiburan live music di sini, yang memungkinkan Anda untuk "
    "menikmati musik kesayangan. Harga tiket masuk sangat terjangkau, hanya Rp 7.000.",
    gambar: "assets/images/pantai-lapade.jpg",
    lokasi: "Desa Pukat, Kec. Utan, Kab. Sumbawa, NTB",
    htm: 7000, 
  ),
   TempatWisata(
    kategori: "Pantai",
    nama: "Pantai Benete",
    deskripsi: "Pantai Benete adalah destinasi pantai yang menawarkan pengalaman yang"
    " sangat menarik. Meskipun pasirnya berwarna hitam dan fasilitas wisatanya masih "
    "dalam perkembangan, keindahan pantai ini benar-benar terpancar ketika Anda"
    " mengunjunginya pada pagi hari atau menjelang matahari terbenam. Pemandangan "
    "senja di Pantai Benete disertai kerlap-kerlip lampu dari PT Amman Mineral Power"
    " Plant, serta kapal yang berlayar keluar dan masuk ke pelabuhan. Pasir pantainya "
    "halus dan berwarna hitam, dan seringkali, Anda dapat melihat para nelayan yang "
    "merapat ke pantai ini untuk memarkirkan perahu mereka.",
    gambar: "assets/images/pantai-benete.jpg",
    lokasi: "Desa Pukat, Kec. Utan, Kab. Sumbawa, NTB",
    htm: 0, 
  ),
];
