import 'package:flutter/material.dart';
import 'package:wisata_app/models/place_base.dart';

class RiverPlace extends ChangeNotifier implements PlaceBase {
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

  RiverPlace({
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

var riverPlaceList = [
  RiverPlace(
    id: '1',
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
  RiverPlace(
    id: '2',
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
  RiverPlace(
    id: '3',
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
  RiverPlace(
    id: '4',
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
  RiverPlace(
    id: '5',
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
  RiverPlace(
    id: '6',
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
  RiverPlace(
    id: '7',
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
  RiverPlace(
    id: '8',
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
];
