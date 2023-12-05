import 'package:flutter/material.dart';
import 'package:wisata_app/models/place_base.dart';

class SafariPlace extends ChangeNotifier implements PlaceBase {
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

  SafariPlace({
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

var safariPlaceList = [
  SafariPlace(
    id: '1',
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
  // SafariPlace(
  //   id: '2',
  //   name: 'The Nice Funtastic Park',
  //   location: 'Sukaresmi',
  //   description:
  //       'Tempat wisata ini mengusung konsep wisata edukasi dan wisata petualangan. The Nice Funtastic Park menawarkan berbagai atraksi, mulai dari koleksi satwa yang beragam hingga berbagai fasilitas kekinian.',
  //   nilai: '4.6',
  //   openDays: 'Open Everyday',
  //   openTime: '09.00-17.00',
  //   ticketPrice: 'Rp 30000',
  //   imageAsset: 'assets/images/the-nice-funstatic-park.jpg',
  //   imageUrls: [
  //     'https://lh3.googleusercontent.com/p/AF1QipNYzpmN8RkDVU9whYVRa1rF0O-oL7dK3-joUixi=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMQUua2PY57oGDU6VxlI_SO9EJojyzjZQWGPmVm=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMPHul8CzIzf_2XlI9O4rIZ_wKiqJ-qPuFIxKcB=s1360-w1360-h1020'
  //   ],
  // ),
  // SafariPlace(
  //   id: '3',
  //   name: 'The Nice Funtastic Park',
  //   location: 'Sukaresmi',
  //   description:
  //       'Tempat wisata ini mengusung konsep wisata edukasi dan wisata petualangan. The Nice Funtastic Park menawarkan berbagai atraksi, mulai dari koleksi satwa yang beragam hingga berbagai fasilitas kekinian.',
  //   nilai: '4.6',
  //   openDays: 'Open Everyday',
  //   openTime: '09.00-17.00',
  //   ticketPrice: 'Rp 30000',
  //   imageAsset: 'assets/images/the-nice-funstatic-park.jpg',
  //   imageUrls: [
  //     'https://lh3.googleusercontent.com/p/AF1QipNYzpmN8RkDVU9whYVRa1rF0O-oL7dK3-joUixi=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMQUua2PY57oGDU6VxlI_SO9EJojyzjZQWGPmVm=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMPHul8CzIzf_2XlI9O4rIZ_wKiqJ-qPuFIxKcB=s1360-w1360-h1020'
  //   ],
  // ),
  // SafariPlace(
  //   id: '4',
  //   name: 'The Nice Funtastic Park',
  //   location: 'Sukaresmi',
  //   description:
  //       'Tempat wisata ini mengusung konsep wisata edukasi dan wisata petualangan. The Nice Funtastic Park menawarkan berbagai atraksi, mulai dari koleksi satwa yang beragam hingga berbagai fasilitas kekinian.',
  //   nilai: '4.6',
  //   openDays: 'Open Everyday',
  //   openTime: '09.00-17.00',
  //   ticketPrice: 'Rp 30000',
  //   imageAsset: 'assets/images/the-nice-funstatic-park.jpg',
  //   imageUrls: [
  //     'https://lh3.googleusercontent.com/p/AF1QipNYzpmN8RkDVU9whYVRa1rF0O-oL7dK3-joUixi=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMQUua2PY57oGDU6VxlI_SO9EJojyzjZQWGPmVm=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMPHul8CzIzf_2XlI9O4rIZ_wKiqJ-qPuFIxKcB=s1360-w1360-h1020'
  //   ],
  // ),
  // SafariPlace(
  //   id: '5',
  //   name: 'The Nice Funtastic Park',
  //   location: 'Sukaresmi',
  //   description:
  //       'Tempat wisata ini mengusung konsep wisata edukasi dan wisata petualangan. The Nice Funtastic Park menawarkan berbagai atraksi, mulai dari koleksi satwa yang beragam hingga berbagai fasilitas kekinian.',
  //   nilai: '4.6',
  //   openDays: 'Open Everyday',
  //   openTime: '09.00-17.00',
  //   ticketPrice: 'Rp 30000',
  //   imageAsset: 'assets/images/the-nice-funstatic-park.jpg',
  //   imageUrls: [
  //     'https://lh3.googleusercontent.com/p/AF1QipNYzpmN8RkDVU9whYVRa1rF0O-oL7dK3-joUixi=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMQUua2PY57oGDU6VxlI_SO9EJojyzjZQWGPmVm=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMPHul8CzIzf_2XlI9O4rIZ_wKiqJ-qPuFIxKcB=s1360-w1360-h1020'
  //   ],
  // ),
  // SafariPlace(
  //   id: '6',
  //   name: 'The Nice Funtastic Park',
  //   location: 'Sukaresmi',
  //   description:
  //       'Tempat wisata ini mengusung konsep wisata edukasi dan wisata petualangan. The Nice Funtastic Park menawarkan berbagai atraksi, mulai dari koleksi satwa yang beragam hingga berbagai fasilitas kekinian.',
  //   nilai: '4.6',
  //   openDays: 'Open Everyday',
  //   openTime: '09.00-17.00',
  //   ticketPrice: 'Rp 30000',
  //   imageAsset: 'assets/images/the-nice-funstatic-park.jpg',
  //   imageUrls: [
  //     'https://lh3.googleusercontent.com/p/AF1QipNYzpmN8RkDVU9whYVRa1rF0O-oL7dK3-joUixi=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMQUua2PY57oGDU6VxlI_SO9EJojyzjZQWGPmVm=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMPHul8CzIzf_2XlI9O4rIZ_wKiqJ-qPuFIxKcB=s1360-w1360-h1020'
  //   ],
  // ),
  // SafariPlace(
  //   id: '7',
  //   name: 'The Nice Funtastic Park',
  //   location: 'Sukaresmi',
  //   description:
  //       'Tempat wisata ini mengusung konsep wisata edukasi dan wisata petualangan. The Nice Funtastic Park menawarkan berbagai atraksi, mulai dari koleksi satwa yang beragam hingga berbagai fasilitas kekinian.',
  //   nilai: '4.6',
  //   openDays: 'Open Everyday',
  //   openTime: '09.00-17.00',
  //   ticketPrice: 'Rp 30000',
  //   imageAsset: 'assets/images/the-nice-funstatic-park.jpg',
  //   imageUrls: [
  //     'https://lh3.googleusercontent.com/p/AF1QipNYzpmN8RkDVU9whYVRa1rF0O-oL7dK3-joUixi=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMQUua2PY57oGDU6VxlI_SO9EJojyzjZQWGPmVm=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMPHul8CzIzf_2XlI9O4rIZ_wKiqJ-qPuFIxKcB=s1360-w1360-h1020'
  //   ],
  // ),
  // SafariPlace(
  //   id: '8',
  //   name: 'The Nice Funtastic Park',
  //   location: 'Sukaresmi',
  //   description:
  //       'Tempat wisata ini mengusung konsep wisata edukasi dan wisata petualangan. The Nice Funtastic Park menawarkan berbagai atraksi, mulai dari koleksi satwa yang beragam hingga berbagai fasilitas kekinian.',
  //   nilai: '4.6',
  //   openDays: 'Open Everyday',
  //   openTime: '09.00-17.00',
  //   ticketPrice: 'Rp 30000',
  //   imageAsset: 'assets/images/the-nice-funstatic-park.jpg',
  //   imageUrls: [
  //     'https://lh3.googleusercontent.com/p/AF1QipNYzpmN8RkDVU9whYVRa1rF0O-oL7dK3-joUixi=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMQUua2PY57oGDU6VxlI_SO9EJojyzjZQWGPmVm=s1360-w1360-h1020',
  //     'https://lh3.googleusercontent.com/p/AF1QipMPHul8CzIzf_2XlI9O4rIZ_wKiqJ-qPuFIxKcB=s1360-w1360-h1020'
  //   ],
  // ),
];
