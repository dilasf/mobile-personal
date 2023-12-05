import 'package:flutter/material.dart';
import 'package:wisata_app/models/place_base.dart';

class BeachPlace extends ChangeNotifier implements PlaceBase {
  String id;
  String name;
  String location;
  String description;
  String nilai;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;
  bool isFavorite = false;

  BeachPlace({
    required this.id,
    required this.name,
    required this.location,
    required this.description,
    required this.nilai,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
    print('Favorite status: $isFavorite');
    notifyListeners();
  }
}

var beachPlaceList = [
  BeachPlace(
    id: '1',
    name: 'Pantai Jayanti',
    location: 'Cidamar',
    description:
        'Pantai berbatu dan terpencil dengan tempat makan & aktivitas memancing komersial di dekatnya, serta ikan untuk dijual.',
    nilai: '4.1',
    openDays: 'Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Rp 5000',
    imageAsset: 'assets/images/pantai-jayanti.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipN8dJYySrdBFcIU-0cvnONdcXx3CYXWKQ27yWMx=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNxFvFgaClOEr3UqzSaCfGw2pBxwzz99ee7gyqL=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipM6U2nq-8zmycayT_FsUj4B8wp5qoteeIL0MvnN=s1360-w1360-h1020'
    ],
  ),
  BeachPlace(
    id: '2',
    name: 'Pantai Karang Potong',
    location: 'Saganten',
    description:
        'Dek observasi tepi laut dengan papan petunjuk terang & pagar dicat yang digunakan sebagai latar belakang foto.',
    nilai: '4.4',
    openDays: 'Setiap Hari',
    openTime: '07.00 - 18.00',
    ticketPrice: 'Rp 20000',
    imageAsset: 'assets/images/pantai-karang-potong.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipOvPF25P0aFBS_skCZAb9hI6xb575IetrRU9wa7=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMJLrwGDYChAJgQKw9zqw3cc-N0UV0VyjkXi-QK=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipP-cZn-i9KpfqfH1-bsPTYda3mI8AZU7S9egOh3=s1360-w1360-h1020',
    ],
  ),
  BeachPlace(
    id: '3',
    name: 'Pantai Apra',
    location: 'Sindangbarang',
    description:
        'Pantai yang berdekatan dengan muara sungai Cisadea ini menjadi salah satu destinasi liburan di akhir pekan yang tak hanya menawarkan keindahan pantainya',
    nilai: '4.2',
    openDays: 'Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Gratis',
    imageAsset: 'assets/icons/pnatai-apra.jpeg',
    imageUrls: [
      'https://www.google.com/maps/uv?pb=!1s0x2e67d7c13f311bb9%3A0xaa9b8d7b15518487!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipO6BT_dGGNloMQHJWySypt6OFe_xtAlZ4nr8chv%3Dw900-h225-n-k-no!5spantai%20apra%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNxi9Jf4iSEJxq43M2Ip8_1cL5eZz4CjL46jtX7&hl=en#',
      'https://www.google.com/maps/uv?pb=!1s0x2e67d7c13f311bb9%3A0xaa9b8d7b15518487!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipO6BT_dGGNloMQHJWySypt6OFe_xtAlZ4nr8chv%3Dw900-h225-n-k-no!5spantai%20apra%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipOtJ3JPejimEdOf2u8b8PL9x-dfSWjMMesFxayw&hl=en#',
      'https://www.google.com/maps/uv?pb=!1s0x2e67d7c13f311bb9%3A0xaa9b8d7b15518487!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipO6BT_dGGNloMQHJWySypt6OFe_xtAlZ4nr8chv%3Dw900-h225-n-k-no!5spantai%20apra%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipPvSugvcG6vbsvlbQOzopFHWx65q3TfvejH6PE&hl=en#'
    ],
  ),
  BeachPlace(
    id: '4',
    name: 'Pantai Sereg',
    location: 'Saganten',
    description:
        'Objek wisata Pantai Samudera di wilayah Cianjur selatan memiliki panorama alam cukup indah, khususnya Pantai Sereg yang memiliki keindahan panorama pantai yang indah dan masih bersih tidak jauh berbeda dengan pantai Jayanti.',
    nilai: '4.1',
    openDays: 'Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Rp 5000',
    imageAsset: 'assets/icons/pantai-sereg.jpeg',
    imageUrls: [
      'https://www.google.com/maps/uv?pb=!1s0x2e67d64913b73ca9%3A0xc3aba5fb66ad1212!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMAb0qSlcuDCJF2WoUBPm-G5DXU6kJiKH2YZ5_n%3Dw900-h225-n-k-no!5spantai%20sereg%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMDF70_7t6eW61qikAcbb3fkQxUOmfUe8Pvh4iv&hl=en#',
      'https://www.google.com/maps/uv?pb=!1s0x2e67d64913b73ca9%3A0xc3aba5fb66ad1212!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMAb0qSlcuDCJF2WoUBPm-G5DXU6kJiKH2YZ5_n%3Dw900-h225-n-k-no!5spantai%20sereg%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipO_gDD8An8on7c-OWt10Z00f2r6Lly8xKLcgqA6&hl=en#',
      'https://www.google.com/maps/uv?pb=!1s0x2e67d64913b73ca9%3A0xc3aba5fb66ad1212!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMAb0qSlcuDCJF2WoUBPm-G5DXU6kJiKH2YZ5_n%3Dw900-h225-n-k-no!5spantai%20sereg%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipOlREXjUxFwXQgZosNPTJBZGCE85l2fWImNZ_6w&hl=en#',
    ],
  ),
  BeachPlace(
    id: '5',
    name: 'Situs Batu Kukumbung',
    location: 'Cidaun',
    description:
        'Pantai ini dikenal memiliki sejarah dan mitos yang menarik. Konon, pantai ini adalah petilasan Prabu Siliwangi, salah satu tokoh legendaris dalam sejarah Jawa Barat. Di samping itu, di pantai ini juga terdapat batu karang yang tersusun seperti kursi, menambah pesona tempat ini.',
    nilai: '4.0',
    openDays: 'Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Rp 5000',
    imageAsset: 'assets/icons/pantai-batu-kukumbung.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipMuht5-SxO6N44A9I1P5QUXNlsaXosSKRD6DK4b=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipPX7EdaLSaRZBE9eQiEE1LxpBB0xzsTsm9SNt8R=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNqqnkMylidYkxxF6TDU6AjgM8mmNe532bS2BXo=s1360-w1360-h1020'
    ],
  ),
  BeachPlace(
    id: '6',
    name: 'Pantai Lugina',
    location: 'Tanjungsari',
    description:
        'pantai Lugina, tempat ini pas sekali sebagai destinasi wisata alam. Karena baru saja dibuka, pantainya masih asri dan memiliki pemandangan yang indah alami',
    nilai: '4.3',
    openDays: 'Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Rp 5000',
    imageAsset: 'assets/icons/pantai-lugina.jpeg',
    imageUrls: [
      'https://www.google.com/maps/uv?pb=!1s0x2e68758ca9794a7f%3A0x38127eafb50f6aec!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipP7otHWYymADXQNm9TZdDPQPX4zT8nERqaYaXuE%3Dw900-h225-n-k-no!5sPantai%20lugina%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNP-9i8dwBclMSRGKOUC6o4tY0IFC_6_XsahQEI&hl=en#',
      'https://www.google.com/maps/uv?pb=!1s0x2e68758ca9794a7f%3A0x38127eafb50f6aec!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipP7otHWYymADXQNm9TZdDPQPX4zT8nERqaYaXuE%3Dw900-h225-n-k-no!5sPantai%20lugina%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNRr_p_u1HZV35RSOqAeYxXm5WVyf_EShZehRP-&hl=en#',
      'https://www.google.com/maps/uv?pb=!1s0x2e68758ca9794a7f%3A0x38127eafb50f6aec!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipP7otHWYymADXQNm9TZdDPQPX4zT8nERqaYaXuE%3Dw900-h225-n-k-no!5sPantai%20lugina%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNU615N39ON7FPJomdMAdvSgfyye2cXDuty2p6K&hl=en#',
    ],
  ),
  BeachPlace(
    id: '7',
    name: 'Pantai Cigebang',
    location: 'Karangwangi',
    description:
        'Pantai yang satu ini dikenal menawarkan pemandangan indah dan ramai didatangi wisatawan. Waktu terbaik untuk datang ke pantai ini adalah saat sore hari. Hal itu dikarenakan Pantai Cigebang menawarkan pemandangan sunset atau matahari terbenam yang menakjubkan.',
    nilai: '4.3',
    openDays: 'Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Rp 5000',
    imageAsset: 'assets/icons/pantai-cigebang.jpeg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipO6WOZyA3uanVpkQTsl9tjrzUuPYgHL3iXQd_wZ=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipOc34HFckCFM5uRAb-MqhgCYaq89eL-894bmLCo=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipPbUkPu_Y4qI0KfjerhI3PQ02GUJrtRkM_vAci5=s1360-w1360-h1020',
    ],
  ),
  BeachPlace(
    id: '8',
    name: 'Pantai Ciwidig',
    location: 'Ciwidig',
    description:
        'Di Pantai Ciwidig ini kamu bisa menikmati pemandangan alam yang disajikan di sini. Apalagi, di Pantai Ciwidig terdapat banyak sekali pohon pinus yang menambah keindahan tempat ini.',
    nilai: '4.2',
    openDays: 'Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Rp 5000',
    imageAsset: 'assets/icons/pantai-ciwidig.jpeg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipOvPF25P0aFBS_skCZAb9hI6xb575IetrRU9wa7=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMJLrwGDYChAJgQKw9zqw3cc-N0UV0VyjkXi-QK=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipP-cZn-i9KpfqfH1-bsPTYda3mI8AZU7S9egOh3=s1360-w1360-h1020',
    ],
  ),
  BeachPlace(
    id: '9',
    name: 'Pantai cemara cipanglay',
    location: 'Cidamar',
    description:
        'Pantai Cemara Cipanglay di Cianjur Selatan Jawa Barat ini memiliki panorama alam yang masih sangat asri. Kesejukan dan angin pantai yang khas, akan bisa Anda nikmati saat berada disini.',
    nilai: '5.0',
    openDays: 'Setiap Hari',
    openTime: '24 Jam',
    ticketPrice: 'Rp 5000',
    imageAsset: 'assets/icons/Pantai-cemara-cipanglay.jpeg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipNNOFHXpx8s2cGLCJk0aWnCB3Uw-E0BD4Mmtb_D=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipOTIrgodD3GIhQHBHnnyrz9m6iMLbwkyQuhPGtF=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNDTgEbKL61xX67syFDd87c_Gdi4P1G1zu_KbyU=s1360-w1360-h1020',
    ],
  ),
];
