import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/constants.dart';
import 'package:wisata_app/widgets/button_nav_bar.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Row(
          children: [
            const Text(
              'Kesukaan Saya',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8),
            Image.asset(
              'assets/icons/love-abu.png',
              width: 25,
              height: 25,
              color: Colors.white,
            ),
          ],
        ),
        titleSpacing: 20,
      ),
      body: Container(),
      bottomNavigationBar: const ButtonNavBar(selectedMenu: MenuState.home),
    );
  }
}
