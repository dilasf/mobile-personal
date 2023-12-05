class NewsPlace {
  String title;
  String category;
  String date;
  String author;
  String media;
  String description1;
  String read;
  String link;
  String description2;
  String berita;
  String link1;
  String link2;
  String link3;
  String imageAsset;
  List<String> imageUrls;

  NewsPlace({
    required this.title,
    required this.category,
    required this.date,
    required this.author,
    required this.media,
    required this.description1,
    required this.read,
    required this.link,
    required this.description2,
    required this.berita,
    required this.link1,
    required this.link2,
    required this.link3,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var newsPlaceList = [
  NewsPlace(
    date: 'Selasa, 07 Nov 2023 10:05 WIB',
    category: 'TRAVEL NEWS',
    title: 'Mendaki Gunung Padang, Bisa Pilih Tangga Baru',
    author: 'Weka Kanaka',
    media: 'detikTravel',
    description1:
        'Cianjur - Gunung Padang di Cianjur merupakan situs bersejarah yang berdiri di atas sebuah bukit. Untuk melihat panoramanya yang menakjubkan, traveler perlu mendaki menuju puncak.Gunung Padang terletak di Desa Karyamukti, Kecamatan Campaka, Kabupaten Cianjur, Provinsi Jawa Barat. Gunung ini berada di ketinggian kurang lebih 885 meter di atas permukaan laut (Mdpl).Situs bersejarah ini terdiri dari ratusan batu columnar joint yang berupa balok batu persegi lima dengan besaran sekitar dua meter. Pemandangan dari atas Gunung Padang sangat menakjubkan. Traveler bisa melihat hamparan bebatuan ini tersebar secara acak, sekaligus panorama perbukitan dan Gunung Gede Pangrango juga terlihat di sini.Baca artikel detikTravel.Sebelum sampai puncak, traveler perlu menaiki tangga batu yang terdiri dari dua jalur. Ada jalur lama ada juga jalur baru. Perbedaan kedua jalur ini adalah jarak tempuh dan rintangannya.Dalam kunjungan detikTravel ke Gunung Padang pada Sabtu (28/10/2023), kami diberi petunjuk oleh pengelola untuk memilih jalur tangga baru. Tetapi jalur tangga lama yang hanya 175 meter perjalanan kami nilai adalah pilihan tepat bagi kami yang ingin memangkas waktu. Sedangkan bagi tangga baru jarak yang ditempuh berkisar 305 meter.',
    read: 'Baca Juga:',
    link:
        'Tempat Wisata Pokland Haurwangi Cianjur, Keindahan Tersembunyi seperti di Pengasingan',
    description2:
        'Tetapi, pada kenyataannya, jalur ini cukup merepotkan, khususnya jika membawa barang bawaan. Karena, jalur tersebut terdiri dari batuan yang disusun acak dan dengan besaran variatif. Bahkan, di jalur ini ada batuan yang jaraknya nyaris selutut. Beruntungnya, masih tersedia pagar besi untuk pegangan menuju ke atas. Perjalanan menuju puncak cukup singkat, yakni hanya sekitar 10 menit. Walau begitu, jalur ini tetap tidak disarankan bagi pengunjung lansia ataupun balita. Di sisi lain, dalam pengamatan ketika kami mendaki melalui jalur ini, para pengunjung lain tidak ada yang memilih jalur sama seperti yang kami pilih. Namun, bagi traveler yang ingin merasakan sensasi sedikit menantang, mungkin jalur ini adalah pilihan yang tepat. Adapun, di jalur tangga baru kendati jarak tempuhnya lebih panjang, tetapi terdiri dari batuan tangga yang halus, rapi dan landai. Sehingga jalur ini seperti melalui anak tangga umumnya dan cocok untuk perjalanan santai. Jalur ini juga cukup ramah bagi pengunjung balita dan usia lanjut.',
    berita: 'BERITA TERKINI',
    link1:
        'Tempat Wisata Pokland Haurwangi Cianjur, Keindahan Tersembunyi seperti di Pengasingan',
    link2: 'Polusi Udara, Banyak Warga Jakarta Main ke Kebun Raya Cibodas',
    link3: 'Mendaki Gunung Padang, Bisa Pilih Tangga Baru',
    imageAsset: 'assets/images/gunung-padang.jpeg',
    imageUrls: [
      'https://media.suara.com/suara-partners/cianjur/thumbs/653x367/2023/08/08/1-kabupaten-cianjur-memang-memiliki-banyak-tempat-wisata-yang-menakjubkan-dan-salah-satunya-adalah-wana-wisata-pokland-haurwangi.jpg',
    ],
  ),
  NewsPlace(
    date: 'Selasa, 07 Nov 2023 10:05 WIB',
    category: 'TRAVEL NEWS',
    title:
        'Tempat Wisata Pokland Haurwangi Cianjur, Keindahan Tersembunyi seperti di Pengasingan',
    author: 'Mela Rahmawati',
    media: 'SuaraCianjur',
    description1:
        'Cianjur - Gunung Padang di Cianjur merupakan situs bersejarah yang berdiri di atas sebuah bukit. Untuk melihat panoramanya yang menakjubkan, traveler perlu mendaki menuju puncak.Gunung Padang terletak di Desa Karyamukti, Kecamatan Campaka, Kabupaten Cianjur, Provinsi Jawa Barat. Gunung ini berada di ketinggian kurang lebih 885 meter di atas permukaan laut (Mdpl).Situs bersejarah ini terdiri dari ratusan batu columnar joint yang berupa balok batu persegi lima dengan besaran sekitar dua meter. Pemandangan dari atas Gunung Padang sangat menakjubkan. Traveler bisa melihat hamparan bebatuan ini tersebar secara acak, sekaligus panorama perbukitan dan Gunung Gede Pangrango juga terlihat di sini.Baca artikel detikTravel.Sebelum sampai puncak, traveler perlu menaiki tangga batu yang terdiri dari dua jalur. Ada jalur lama ada juga jalur baru. Perbedaan kedua jalur ini adalah jarak tempuh dan rintangannya.Dalam kunjungan detikTravel ke Gunung Padang pada Sabtu (28/10/2023), kami diberi petunjuk oleh pengelola untuk memilih jalur tangga baru. Tetapi jalur tangga lama yang hanya 175 meter perjalanan kami nilai adalah pilihan tepat bagi kami yang ingin memangkas waktu. Sedangkan bagi tangga baru jarak yang ditempuh berkisar 305 meter.',
    read: 'Baca Juga:',
    link: 'Polusi Udara, Banyak Warga Jakarta Main ke Kebun Raya Cibodas',
    description2:
        'Tetapi, pada kenyataannya, jalur ini cukup merepotkan, khususnya jika membawa barang bawaan. Karena, jalur tersebut terdiri dari batuan yang disusun acak dan dengan besaran variatif. Bahkan, di jalur ini ada batuan yang jaraknya nyaris selutut. Beruntungnya, masih tersedia pagar besi untuk pegangan menuju ke atas. Perjalanan menuju puncak cukup singkat, yakni hanya sekitar 10 menit. Walau begitu, jalur ini tetap tidak disarankan bagi pengunjung lansia ataupun balita. Di sisi lain, dalam pengamatan ketika kami mendaki melalui jalur ini, para pengunjung lain tidak ada yang memilih jalur sama seperti yang kami pilih. Namun, bagi traveler yang ingin merasakan sensasi sedikit menantang, mungkin jalur ini adalah pilihan yang tepat. Adapun, di jalur tangga baru kendati jarak tempuhnya lebih panjang, tetapi terdiri dari batuan tangga yang halus, rapi dan landai. Sehingga jalur ini seperti melalui anak tangga umumnya dan cocok untuk perjalanan santai. Jalur ini juga cukup ramah bagi pengunjung balita dan usia lanjut.',
    berita: 'BERITA TERKINI',
    link1:
        'Tempat Wisata Pokland Haurwangi Cianjur, Keindahan Tersembunyi seperti di Pengasingan',
    link2: 'Polusi Udara, Banyak Warga Jakarta Main ke Kebun Raya Cibodas',
    link3: 'Mendaki Gunung Padang, Bisa Pilih Tangga Baru',
    imageAsset: 'assets/images/berita-pockland.jpg',
    imageUrls: [
      'https://asset.kompas.com/crops/qo0qrR4wghQxgmTKVvBZWVKFoz8=/569x0:5633x3376/750x500/data/photo/2023/03/10/640afdc94c9dd.jpg',
    ],
  ),
  NewsPlace(
    date: 'Selasa, 07 Nov 2023 10:05 WIB',
    category: 'TRAVEL NEWS',
    title: 'Polusi Udara, Banyak Warga Jakarta Main ke Kebun Raya Cibodas',
    author: 'Tamila Tashandra',
    media: 'Kompas.com',
    description1:
        'Cianjur - Gunung Padang di Cianjur merupakan situs bersejarah yang berdiri di atas sebuah bukit. Untuk melihat panoramanya yang menakjubkan, traveler perlu mendaki menuju puncak.Gunung Padang terletak di Desa Karyamukti, Kecamatan Campaka, Kabupaten Cianjur, Provinsi Jawa Barat. Gunung ini berada di ketinggian kurang lebih 885 meter di atas permukaan laut (Mdpl).Situs bersejarah ini terdiri dari ratusan batu columnar joint yang berupa balok batu persegi lima dengan besaran sekitar dua meter. Pemandangan dari atas Gunung Padang sangat menakjubkan. Traveler bisa melihat hamparan bebatuan ini tersebar secara acak, sekaligus panorama perbukitan dan Gunung Gede Pangrango juga terlihat di sini.Baca artikel detikTravel.Sebelum sampai puncak, traveler perlu menaiki tangga batu yang terdiri dari dua jalur. Ada jalur lama ada juga jalur baru. Perbedaan kedua jalur ini adalah jarak tempuh dan rintangannya.Dalam kunjungan detikTravel ke Gunung Padang pada Sabtu (28/10/2023), kami diberi petunjuk oleh pengelola untuk memilih jalur tangga baru. Tetapi jalur tangga lama yang hanya 175 meter perjalanan kami nilai adalah pilihan tepat bagi kami yang ingin memangkas waktu. Sedangkan bagi tangga baru jarak yang ditempuh berkisar 305 meter.',
    read: 'Baca Juga:',
    link: 'Mendaki Gunung Padang, Bisa Pilih Tangga Baru',
    description2:
        'Tetapi, pada kenyataannya, jalur ini cukup merepotkan, khususnya jika membawa barang bawaan. Karena, jalur tersebut terdiri dari batuan yang disusun acak dan dengan besaran variatif. Bahkan, di jalur ini ada batuan yang jaraknya nyaris selutut. Beruntungnya, masih tersedia pagar besi untuk pegangan menuju ke atas. Perjalanan menuju puncak cukup singkat, yakni hanya sekitar 10 menit. Walau begitu, jalur ini tetap tidak disarankan bagi pengunjung lansia ataupun balita. Di sisi lain, dalam pengamatan ketika kami mendaki melalui jalur ini, para pengunjung lain tidak ada yang memilih jalur sama seperti yang kami pilih. Namun, bagi traveler yang ingin merasakan sensasi sedikit menantang, mungkin jalur ini adalah pilihan yang tepat. Adapun, di jalur tangga baru kendati jarak tempuhnya lebih panjang, tetapi terdiri dari batuan tangga yang halus, rapi dan landai. Sehingga jalur ini seperti melalui anak tangga umumnya dan cocok untuk perjalanan santai. Jalur ini juga cukup ramah bagi pengunjung balita dan usia lanjut.',
    berita: 'BERITA TERKINI',
    link1:
        'Tempat Wisata Pokland Haurwangi Cianjur, Keindahan Tersembunyi seperti di Pengasingan',
    link2: 'Polusi Udara, Banyak Warga Jakarta Main ke Kebun Raya Cibodas',
    link3: 'Mendaki Gunung Padang, Bisa Pilih Tangga Baru',
    imageAsset: 'assets/images/berita-cibodas.jpg',
    imageUrls: [
      'https://akcdn.detik.net.id/community/media/visual/2023/10/31/gunung-padang-2_169.jpeg?w=700&q=90',
    ],
  ),
];
