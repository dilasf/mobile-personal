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
  LakePlace(
    id: '4',
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
    id: '5',
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
  LakePlace(
    id: '6',
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
    id: '7',
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
  LakePlace(
    id: '8',
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
];
