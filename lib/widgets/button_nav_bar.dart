import 'package:flutter/material.dart';
import 'package:wisata_app/constants.dart';
import 'package:wisata_app/screens/dashboard_screen.dart';
import 'package:wisata_app/screens/favorit_screen.dart';
import 'package:wisata_app/screens/profile_screen.dart';
import 'package:wisata_app/screens/search_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

enum MenuState { home, search, map, favorit, profile }

class ButtonNavBar extends StatelessWidget {
  const ButtonNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF338A94),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  "assets/icons/compass-abu.png",
                  color: MenuState.profile == selectedMenu
                      ? primaryColor
                      : Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => DashboardScreen(),
                    transitionDuration: const Duration(seconds: 0),
                  ),
                );
              },
            ),
            IconButton(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  "assets/icons/search-abu.png",
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const SearchScreen(),
                    transitionDuration: const Duration(seconds: 0),
                  ),
                );
              },
            ),
            IconButton(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  "assets/icons/location-abu.png",
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                // Navigator.pushReplacement(
                //   context,
                //   PageRouteBuilder(
                //     pageBuilder: (_, __, ___) => const MapScreen(),
                //     transitionDuration: const Duration(seconds: 0),
                //   ),
                // );
              },
            ),
            IconButton(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  "assets/icons/love-abu.png",
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const FavoritScreen(),
                    transitionDuration: const Duration(seconds: 0),
                  ),
                );
              },
            ),
            IconButton(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  "assets/icons/person-abu.png",
                  color: MenuState.profile == selectedMenu
                      ? primaryColor
                      : Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const ProfileScreen(),
                    transitionDuration: const Duration(seconds: 0),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
