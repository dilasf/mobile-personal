import 'package:flutter/material.dart';
import 'package:wisata_app/models/place_base.dart';

class ForestPlace extends ChangeNotifier implements PlaceBase {
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

  ForestPlace({
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

  @override
  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}

var forestPlaceList = [
  ForestPlace(
    id: '1',
    name: 'Taman Kota Bekas Terminal Bus',
    location: 'Cianjur',
    description: 'Taman Kota Cianjur, Cocok untuk jalan-jalan',
    nilai: '4.2',
    openDays: 'Open Everyday',
    openTime: '24 Hours',
    ticketPrice: 'Rp -',
    imageAsset: 'assets/images/taman-kota.jpg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPkhxxPd2TUsRFapm57wByGh0TVxJzawmP1Tk5d=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipO16lykn283MzZcyAgWplzidYlgIDbvUqegaUS_=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipOTsK0BP13XhqJ-zov-uuuXUjo1zyWEAWeYKQNy=s1360-w1360-h1020'
    ],
  ),
  ForestPlace(
    id: '2',
    name: 'Wahana Wisata Pokland',
    location: 'Haurwangi',
    description:
        'Wahana Wisata Pokland merupakan tempat wisata dengan suasana rindang dan memiliki sejumlah wahana permainan. Obyek wisata ini cocok untuk liburan bersama keluarga maupun teman.',
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
  ForestPlace(
    id: '3',
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
  ForestPlace(
    id: '4',
    name: 'HUKOCI Hutan Kota Cianjur',
    location: 'Babakankaret',
    description:
        'Wisata taman hukoci yang ada di kota Cianjur menjadi salah satu destinasi wisata yang sampai sekarang banyak dikunjungi oleh wisatawan di mana Ketika anda berkunjung ke Taman hutan kota Cianjur tersebut, maka tetaplah menjaga kebersihan lingkungan supaya tetap Asri dan nyaman untuk pengunjung lain.',
    nilai: '4.2',
    openDays: 'Open EveryDay',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Gratis',
    imageAsset: 'assets/images/hukoci.jpeg',
    imageUrls: [
      'https://lh5.googleusercontent.com/p/AF1QipNabKJf6Ti-sssh8csZoXFmBLCR_ELG33aAQTBJ=w141-h235-n-k-no-nu',
      'https://lh5.googleusercontent.com/p/AF1QipMvJlZ9OODSiF3H7p4ybu9U5FLgJl30GcdeCzqL=w141-h101-n-k-no-nu',
      'https://lh5.googleusercontent.com/p/AF1QipPP3hN2aokO9kwQjGNF6BXVlys6C4yGmmGbvZcA=w141-h141-n-k-no-nu'
    ],
  )
];
