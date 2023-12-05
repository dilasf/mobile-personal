import 'package:flutter/material.dart';
import 'package:wisata_app/models/place_base.dart';

class MountainPlace extends ChangeNotifier implements PlaceBase {
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

  MountainPlace({
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

var mountainPlaceList = [
  MountainPlace(
    id: '1',
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
  MountainPlace(
    id: '2',
    name: 'Wisata Situs Gunung Padang',
    location: 'Karyamukti',
    description:
        'Gunung Padang adalah sebuah situs megalitikum yang terletak di Karyamukti, Campaka, Kabupaten Cianjur, Jawa Barat, Indonesia, 30 kilometer barat daya pusat kabupaten atau 8 kilometer dari Stasiun Lampegan.',
    nilai: '4.6',
    openDays: 'Open EveryDay',
    openTime: '08.00-16.30',
    ticketPrice: 'Rp 20000',
    imageAsset: 'assets/images/gunung-padang.jpeg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPGCOMune2-vhx1bwGe3WjcqTWH3QAQ_dgHkSHN=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNX7X0zbDSO1IS6F9aDDEp8LBOxAHw2XF-vphOY=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMVI5RZnPO3V7tjbMU2j74gumY2kAZ_RLD0P3UV=s1360-w1360-h1020',
    ],
  ),
  MountainPlace(
    id: '3',
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
  MountainPlace(
    id: '4',
    name: 'Wisata Situs Gunung Padang',
    location: 'Karyamukti',
    description:
        'Gunung Padang adalah sebuah situs megalitikum yang terletak di Karyamukti, Campaka, Kabupaten Cianjur, Jawa Barat, Indonesia, 30 kilometer barat daya pusat kabupaten atau 8 kilometer dari Stasiun Lampegan.',
    nilai: '4.6',
    openDays: 'Open EveryDay',
    openTime: '08.00-16.30',
    ticketPrice: 'Rp 20000',
    imageAsset: 'assets/images/gunung-padang.jpeg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPGCOMune2-vhx1bwGe3WjcqTWH3QAQ_dgHkSHN=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNX7X0zbDSO1IS6F9aDDEp8LBOxAHw2XF-vphOY=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMVI5RZnPO3V7tjbMU2j74gumY2kAZ_RLD0P3UV=s1360-w1360-h1020',
    ],
  ),
  MountainPlace(
    id: '5',
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
  MountainPlace(
    id: '6',
    name: 'Wisata Situs Gunung Padang',
    location: 'Karyamukti',
    description:
        'Gunung Padang adalah sebuah situs megalitikum yang terletak di Karyamukti, Campaka, Kabupaten Cianjur, Jawa Barat, Indonesia, 30 kilometer barat daya pusat kabupaten atau 8 kilometer dari Stasiun Lampegan.',
    nilai: '4.6',
    openDays: 'Open EveryDay',
    openTime: '08.00-16.30',
    ticketPrice: 'Rp 20000',
    imageAsset: 'assets/images/gunung-padang.jpeg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPGCOMune2-vhx1bwGe3WjcqTWH3QAQ_dgHkSHN=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNX7X0zbDSO1IS6F9aDDEp8LBOxAHw2XF-vphOY=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMVI5RZnPO3V7tjbMU2j74gumY2kAZ_RLD0P3UV=s1360-w1360-h1020',
    ],
  ),
  MountainPlace(
    id: '7',
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
  MountainPlace(
    id: '8',
    name: 'Wisata Situs Gunung Padang',
    location: 'Karyamukti',
    description:
        'Gunung Padang adalah sebuah situs megalitikum yang terletak di Karyamukti, Campaka, Kabupaten Cianjur, Jawa Barat, Indonesia, 30 kilometer barat daya pusat kabupaten atau 8 kilometer dari Stasiun Lampegan.',
    nilai: '4.6',
    openDays: 'Open EveryDay',
    openTime: '08.00-16.30',
    ticketPrice: 'Rp 20000',
    imageAsset: 'assets/images/gunung-padang.jpeg',
    imageUrls: [
      'https://lh3.googleusercontent.com/p/AF1QipPGCOMune2-vhx1bwGe3WjcqTWH3QAQ_dgHkSHN=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipNX7X0zbDSO1IS6F9aDDEp8LBOxAHw2XF-vphOY=s1360-w1360-h1020',
      'https://lh3.googleusercontent.com/p/AF1QipMVI5RZnPO3V7tjbMU2j74gumY2kAZ_RLD0P3UV=s1360-w1360-h1020',
    ],
  ),
];
