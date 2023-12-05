import 'package:flutter/material.dart';
import 'package:wisata_app/models/place_base.dart';

class CustomPlace extends ChangeNotifier implements PlaceBase {
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

  CustomPlace({
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

var customPlaceList = [
  CustomPlace(
    id: '1',
    name: 'Pantai Jayanti',
    location: 'Cidamar',
    description:
        'Pantai berbatu dan terpencil dengan tempat makan & aktivitas memancing komersial di dekatnya, serta ikan untuk dijual.',
    nilai: '4.1',
    openDays: 'Open Everyday',
    openTime: '-',
    ticketPrice: 'Rp 25000',
    imageAsset: 'assets/images/pantai-jayanti.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipN8dJYySrdBFcIU-0cvnONdcXx3CYXWKQ27yWMx=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNxFvFgaClOEr3UqzSaCfGw2pBxwzz99ee7gyqL=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipM6U2nq-8zmycayT_FsUj4B8wp5qoteeIL0MvnN=s1360-w1360-h1020'
    ],
  ),
  CustomPlace(
    id: '2',
    name: 'Taman Nasional Gunung Gede Pangrango',
    location: 'Cimacan',
    description:
        'Taman Nasional Gunung Gede Pangrango adalah sebuah taman nasional di Jawa Barat, Indonesia. Taman ini berpusat di dua gunung berapi—Gunung Gede dan Gunung Pangrango—dan luasnya 150 km².',
    nilai: '4.7',
    openDays: 'Open Everyday',
    openTime: '09.00-18.00',
    ticketPrice: 'Rp 25000',
    imageAsset: 'assets/images/gunung-gede.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPp8dHBzllWr0238Yw-soFWlII2mA-QycuOHlDv=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipOqO_3mPiXUsLbl5JRICus05_s1V-PrwiIJqEIN=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipPpW1Zf0d0BSDyqoJWL7Gdea6kcP6BmAeyp1cru=s1360-w1360-h1020'
    ],
  ),
  CustomPlace(
    id: '3',
    name: 'Curug Cibeureum',
    location: 'Desa Cilember',
    description:
        'Curug Cibereum adalah air terjun yang berada di Kabupaten Cianjur, Provinsi Jawa Barat. Di kawasan ini terdiri dari tiga air terjun yang saling berdekatan. Selain air terjun utama Curug Cibeureum, terdapat dua air terjun lain yang lebih kecil, yaitu Curug Cidendeng dan Curug Cikundul.',
    nilai: '4.7',
    openDays: 'Open EveryDay',
    openTime: '08.00-18.00',
    ticketPrice: 'Rp 20000',
    imageAsset: 'assets/images/curug-cibereum.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPGCOMune2-vhx1bwGe3WjcqTWH3QAQ_dgHkSHN=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNX7X0zbDSO1IS6F9aDDEp8LBOxAHw2XF-vphOY=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMVI5RZnPO3V7tjbMU2j74gumY2kAZ_RLD0P3UV=s1360-w1360-h1020',
    ],
  ),
  CustomPlace(
    id: '4',
    name: 'Pantai Karang Potong',
    location: 'Saganten',
    description:
        'Dek observasi tepi laut dengan papan petunjuk terang & pagar dicat yang digunakan sebagai latar belakang foto.',
    nilai: '4.4',
    openDays: 'Open EveryDay',
    openTime: '-',
    ticketPrice: 'Rp 20000',
    imageAsset: 'assets/images/pantai-karang-potong.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipOvPF25P0aFBS_skCZAb9hI6xb575IetrRU9wa7=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMJLrwGDYChAJgQKw9zqw3cc-N0UV0VyjkXi-QK=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipP-cZn-i9KpfqfH1-bsPTYda3mI8AZU7S9egOh3=s1360-w1360-h1020',
    ],
  ),
  CustomPlace(
    id: '5',
    name: 'Cirata Jangari',
    location: 'Bobojong',
    description:
        'Berlayar di sekitar waduk dengan pemukiman panggung & restoran terapung yang menyajikan jajanan kaki lima.',
    nilai: '4.2',
    openDays: 'Open EveryDay',
    openTime: '09:00 - 16:00',
    ticketPrice: 'Rp 20000',
    imageAsset: 'assets/images/jangari.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipMxjFNocYR2HXDYlAnR-OFbQ52vGtyMUaT6SYAJ=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipOJ8Gm0oXQYPmMOUySYU1vAbcNGJGyiprfalYBc=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipOP6t0XF49CXgSC60KodzdHvK392qW8qIBf-m-J=s1360-w1360-h1020',
    ],
  ),
  CustomPlace(
    id: '6',
    name: 'Taman Kota Bekas Terminal Bus',
    location: 'Cianjur',
    description: 'Taman Kota Cianjur, Cocok untuk jalan-jalan',
    nilai: '4.2',
    openDays: 'Open Everyday',
    openTime: '24 Hours',
    ticketPrice: '-',
    imageAsset: 'assets/images/taman-kota.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPkhxxPd2TUsRFapm57wByGh0TVxJzawmP1Tk5d=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipO16lykn283MzZcyAgWplzidYlgIDbvUqegaUS_=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipOTsK0BP13XhqJ-zov-uuuXUjo1zyWEAWeYKQNy=s1360-w1360-h1020'
    ],
  ),
  CustomPlace(
    id: '7',
    name: 'Pantai Karang Potong',
    location: 'Saganten',
    description:
        'Dek observasi tepi laut dengan papan petunjuk terang & pagar dicat yang digunakan sebagai latar belakang foto.',
    nilai: '4.4',
    openDays: 'Open EveryDay',
    openTime: '-',
    ticketPrice: 'Rp 20000',
    imageAsset: 'assets/images/pantai-karang-potong.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipOvPF25P0aFBS_skCZAb9hI6xb575IetrRU9wa7=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMJLrwGDYChAJgQKw9zqw3cc-N0UV0VyjkXi-QK=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipP-cZn-i9KpfqfH1-bsPTYda3mI8AZU7S9egOh3=s1360-w1360-h1020',
    ],
  ),
  CustomPlace(
    id: '8',
    name: 'The Nice Funtastic Park',
    location: 'Sukaresmi',
    description:
        'Tempat wisata ini mengusung konsep wisata edukasi dan wisata petualangan. The Nice Funtastic Park menawarkan berbagai atraksi, mulai dari koleksi satwa yang beragam hingga berbagai fasilitas kekinian.',
    nilai: '4.6',
    openDays: 'Open Everyday',
    openTime: '09.00-17.00',
    ticketPrice: 'Rp 30000',
    imageAsset: 'assets/images/the-nice-funstatic-park.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipNYzpmN8RkDVU9whYVRa1rF0O-oL7dK3-joUixi=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMQUua2PY57oGDU6VxlI_SO9EJojyzjZQWGPmVm=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMPHul8CzIzf_2XlI9O4rIZ_wKiqJ-qPuFIxKcB=s1360-w1360-h1020'
    ],
  ),
  CustomPlace(
    id: '9',
    name: 'Wahana Wisata Pokland',
    location: 'Haurwangi',
    description:
        'Wana Wisata Pokland merupakan tempat wisata dengan suasana rindang dan memiliki sejumlah wahana permainan. Obyek wisata ini cocok untuk liburan bersama keluarga maupun teman.',
    nilai: '3.9',
    openDays: 'Open EveryDay',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Rp 20000',
    imageAsset: 'assets/images/pokland.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPwdZc6mCcf_uy1NzzFkyfvmJ176j4XRiCE2lhs=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipP15nmkiqBm-FA3kl-t1jwoDMll5DtzaTmck7bZ=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNy-jBabNEPb3NqzFniE3_-MY7hWQKaB-gm5MBn=s1360-w1360-h1020',
    ],
  ),
  CustomPlace(
    id: '10',
    name: 'Kebun Raya Cibodas',
    location: 'Cipanas',
    description:
        'Kebun Raya Cibodas adalah sebuah kebun raya seluas 84,99 hektar di lereng Gunung Gede, yang terletak di kecamatan Cibodas, Jawa Barat, Indonesia. Dioperasikan oleh Lembaga Ilmu Pengetahuan Indonesia yang kini telah bertransformasi menjadi Badan Riset dan Inovasi Nasional.',
    nilai: '4.6',
    openDays: 'Open Everyday',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Rp 25000',
    imageAsset: 'assets/images/cibodas.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPC2L8Et0KnJU02AitsWyMe5oqMmXEjwNurD8IS=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNpcBzm60qEfBY-BD3fCftIiofWc1wYkWltpXOo=s1360-w1360-h1020',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/9a/12/26/water-pond.jpg?w=1200&h=-1&s=1'
    ],
  ),
  CustomPlace(
    id: '11',
    name: 'Sungai Cikundul',
    location: 'Ciloto',
    description:
        'Trek yang tersedia di sungai cikundul ini sungguh memanjakan para pecinta olahraga ektrem tersebut.Panjang sungai cikundul ini 9 KM , Sungai cikundul di desa cijagang tersebut belum terjamah sehingga keasriannya masih terjamin.',
    nilai: '5.0',
    openDays: 'Open Everyday',
    openTime: '09.00-16.00',
    ticketPrice: 'Rp 250000/pax',
    imageAsset: 'assets/images/sungai-cikundul.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPMl6uaZ_mMS5iRT2v3qOZNZDawnEF94NKm5rdX=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipPK_N9gq8Kg7SukYkyrX5LngWe6VBowgZkrR7A=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipOVndhJMnZLMKZAljGfPxkJ6QRIrEvgtAp0Cewq=s1360-w1360-h1020',
    ],
  ),
];
