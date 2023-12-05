import 'package:flutter/material.dart';
import 'package:wisata_app/models/place_base.dart';

class LakePlace extends ChangeNotifier implements PlaceBase {
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

  LakePlace({
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

var lakePlaceList = [
  LakePlace(
    id: '1',
    name: 'Danau Cigunung Tugu Takokak',
    location: 'Takokak',
    description:
        'Danau Cigunung Tugu yang lokasinya berdampingan dengan Tugu Makam Pahlawan ini, menyuguhkan keasrian alam yang membuat nyaman. Air di danau Cigunung Tugu masih nampak alami dan sangat jernih, karena bersumber langsung dari mata air yang alami.',
    nilai: '4.2',
    openDays: 'Open Everyday',
    openTime: '24 Jam',
    ticketPrice: 'Rp 5000',
    imageAsset: 'assets/images/cigunung.jpeg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipOvJvDIheKjEy9o0GZc0lUqj3DBEN_YZTa3nH1U=s680-w680-h510',
      'https://lh3.googleusercontent.com/p/AF1QipP5Ab640yh7Lj_rJocxmu9Q_WSEj4108nNHvrp_=s680-w680-h510',
      'https://lh3.googleusercontent.com/p/AF1QipP1AFBTIruIQdzDY3wW6N5IMW_loNxeY0IaDX2y=s680-w680-h510'
    ],
  ),
  LakePlace(
    id: '2',
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
  LakePlace(
    id: '3',
    name: 'Danau Besar Cibodas',
    location: 'Cipanas',
    description:
        'Meskipun sebenarnya hanya berupa kolam besar, namun banyak yang menyebutnya sebagai danau. Di tengah danau tersebut terdapat air mancur yang menambah indah. Ada pula ikan hias yang berenang dan seringkali muncul ke permukaan. Di sekitar danau tersebut terdapat pohon-pohon besar. Bahkan tidak jauh dari spot itu pun ada juga hamparan rumput yang lapang.',
    nilai: '4.9',
    openDays: 'Buka Setiap Hari',
    openTime: '08:00 - 16:00',
    ticketPrice: 'Rp 16000',
    imageAsset: 'assets/images/danau-besar.jpeg',
    imageUrls: [
      'https://lh5.googleusercontent.com/p/AF1QipMj9wpoIvYI9bCW2o3Ysovx19xPA_fHch2IlhC5=w141-h101-n-k-no-nu',
      'https://lh3.googleusercontent.com/p/AF1QipMbNcxs3wxhaN0a6HO49UoQtCqR4U2kdT3pirM=s680-w680-h510',
      'https://lh5.googleusercontent.com/p/AF1QipP-Q8jJt4VX4FCovaBeUv4SrBK5SmSpD3c78qO4=w141-h101-n-k-no-nu'
    ],
  ),
  LakePlace(
    id: '4',
    name: 'Telaga Biru',
    location: 'Cipanas',
    description:
        'Telaga Biru ini terbentuk akibat letusan Gunung Gede Pangrango pada masa lalu. Air telaga ini berasal dari mata air pegunungan dan berwarna biru jernih karena adanya kandungan belerang.',
    nilai: '4.6',
    openDays: 'Buka Setiap Hari',
    openTime: '08:00 - 17:00',
    ticketPrice: 'Rp 16000',
    imageAsset: 'assets/images/telaga-biru.jpeg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipMCwhyQ6tpjc4EDn6cPyHR6Okg33IAOont27eMU=s680-w680-h510',
      'https://lh3.googleusercontent.com/p/AF1QipMFZzHi4O3SwWHOiXlOGItlAD6mwPpzJBrltKSA=s680-w680-h510',
      'https://lh3.googleusercontent.com/p/AF1QipMbNqDOc_FeSyrugNkPPN1xPckeFyfltID8oMXa=s680-w680-h510'
    ],
  ),
];
