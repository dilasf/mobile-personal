import 'package:flutter/material.dart';
import 'package:wisata_app/models/category_models/popular_place.dart';
import 'package:wisata_app/models/custom_place_data.dart';
import 'package:wisata_app/models/news_place.dart';
import 'package:wisata_app/screens/notification_screen.dart';
import 'package:wisata_app/screens/categoryscreens/category_screen.dart';
import 'package:wisata_app/screens/categoryscreens/details_screen/detail_screen.dart';
import 'package:wisata_app/screens/categoryscreens/popular_screen.dart';
import 'package:wisata_app/screens/news_detail_screen.dart';
import 'package:wisata_app/screens/profile_screens/personal_data_screen.dart';
import 'package:wisata_app/utils/contants.dart';
import 'package:wisata_app/widgets/button_nav_bar.dart';
import 'package:wisata_app/widgets/category_bar/category_bar.dart';
import 'package:wisata_app/widgets/news_card.dart';
import 'package:wisata_app/widgets/popular_card.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final WisataPopuler wisataPopulerInstance =
        WisataPopuler(places: popularPlaceList);

    final int index = 0;

    return Scaffold(
      body: Container(
        color: secondaryColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Lokasi",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Color(0xFF8B7E7E),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const NotifScreen();
                            }));
                          },
                          child: Image.asset(
                            "assets/icons/notification-icon-ijo.png",
                            height: 20,
                            width: 20,
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const PersonalDataScreen();
                            }));
                          },
                          child: Image.asset(
                            "assets/icons/akun_dashboard_icon.png",
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: size.height * .01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        "assets/icons/location_default.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Cianjur, Jawa Barat",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Inter',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * .01),
                Container(
                  width: 2000,
                  height: 3,
                  decoration: const BoxDecoration(color: Color(0xFF338A94)),
                ),
                SizedBox(height: size.height * .04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Kategori",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        color: textDarkColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CategoryScreen(
                              allplaces: [customPlaceList[0]]);
                        }));
                      },
                      child: const Text(
                        "Lihat semua",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          color: Color(0xFF77797C),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * .01),
                const ButtonCategoryBar(categoryMenu: CategoryState.danau),
                SizedBox(height: size.height * .01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Populer",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        color: textDarkColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const PopularScreen();
                        }));
                      },
                      child: const Text(
                        "Lihat semua",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          color: Color(0xFF77797C),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * .01),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailScreen(
                                place: wisataPopulerInstance.places[index]);
                          },
                        ),
                      );
                    },
                    child: WisataPopuler(places: popularPlaceList),
                  ),
                ),
                SizedBox(height: size.height * .02),
                const Text(
                  "Berita Wisata",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    color: textDarkColor,
                  ),
                ),
                SizedBox(height: size.height * .01),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NewsScreen(news: newsPlaceList[index]);
                          },
                        ),
                      );
                    },
                    child: BeritaWisata(newsList: newsPlaceList),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const ButtonNavBar(selectedMenu: MenuState.home),
    );
  }
}
