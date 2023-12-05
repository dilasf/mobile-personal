import 'package:flutter/material.dart';
import 'package:wisata_app/models/user_data.dart';

class UserDataProvider extends ChangeNotifier {
  UserData _userData = UserData(
    nama: 'Sifa Fadilah',
    email: 'sifafadilah@gmail.com',
    kataSandi: 'password',
    jenisKelamin: '',
    tempatLahir: '',
    tanggalLahir: '',
    alamat: '',
  );

  UserData get userData => _userData;

  void updateUserData(UserData newData) {
    _userData = newData;
    notifyListeners();
  }
}
