import 'package:flutter/material.dart';
import 'package:wisata_app/utils/contants.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bahasa',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/back-icons.png',
            width: 25,
            height: 25,
          ),
          iconSize: 25,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0,
      ),
      body: Container(
        color: secondaryColor,
      ),
    );
  }
}
