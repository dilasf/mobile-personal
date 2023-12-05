import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/constants.dart';
import 'package:wisata_app/models/user_data.dart';
import 'package:wisata_app/providers/userData_provider.dart';
import 'package:wisata_app/screens/favorit_screen.dart';
import 'package:wisata_app/screens/notification_screen.dart';
import 'package:wisata_app/screens/profile_screens/language_screen.dart';
import 'package:wisata_app/screens/profile_screens/personal_data_screen.dart';
import 'package:wisata_app/screens/profile_screens/security_data_screen.dart';
import 'package:wisata_app/widgets/button_nav_bar.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            color: secondaryColor,
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: primaryColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Consumer<UserDataProvider>(
                    builder: (context, userDataProvider, child) {
                      UserData userData = userDataProvider.userData;
                      return Text(
                        userData.nama,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: textLightColor,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: size.height * .03),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/foto_profil.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: secondaryColor,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  buildListItem(context, 'Akun'),
                  buildListItem(context, 'Edit Profil'),
                  buildListItem(context, 'Keamanan'),
                  buildListItem(context, 'Pemberitahuan'),
                  buildListItem(context, 'Konten'),
                  buildListItem(context, 'Kesukaan'),
                  buildListItem(context, 'Preferensi'),
                  buildListItem(context, 'Bahasa'),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ButtonNavBar(selectedMenu: MenuState.home),
    );
  }

  Widget buildListItem(BuildContext context, String text) {
    Map<String, String> iconAssetPaths = {
      'Edit Profil': 'assets/icons/person-abu.png',
      'Keamanan': 'assets/icons/security_icon.png',
      'Pemberitahuan': 'assets/icons/notif-abu.png',
      'Kesukaan': 'assets/icons/love-abu.png',
      'Bahasa': 'assets/icons/language_icon.png',
    };

    String? iconAssetPath = iconAssetPaths[text];

    bool hasWhiteBackground = [
      'Akun',
      'Konten',
      'Preferensi',
    ].contains(text);

    return Column(
      children: [
        Container(
          height: hasWhiteBackground ? 1.0 : 0.0,
          color: hasWhiteBackground ? Colors.white : null,
        ),
        Container(
          color: hasWhiteBackground ? Colors.white : null,
          child: ListTile(
            title: Row(
              children: [
                if (iconAssetPath != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(
                      iconAssetPath,
                      width: 20,
                      height: 20,
                    ),
                  ),
                Text(
                  text,
                  style: TextStyle(
                    color: hasWhiteBackground
                        ? Colors.black
                        : const Color(0xFF5F5C5C),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            trailing: hasWhiteBackground
                ? null
                : const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF5F5C5C),
                  ),
            onTap: () {
              switch (text) {
                case 'Edit Profil':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PersonalDataScreen(),
                    ),
                  );
                  break;

                case 'Keamanan':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecurityDataScreen(),
                    ),
                  );
                  break;

                case 'Pemberitahuan':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotifScreen(),
                    ),
                  );
                  break;

                case 'Kesukaan':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavoritScreen(),
                    ),
                  );
                  break;
                case 'Bahasa':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LanguageScreen(),
                    ),
                  );
                  break;
                default:
              }
            },
          ),
        ),
      ],
    );
  }
}
