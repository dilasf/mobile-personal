import 'package:flutter/material.dart';
import 'package:wisata_app/constants.dart';
import 'package:wisata_app/models/custom_place_data.dart';
import 'package:wisata_app/models/place_base.dart';
import 'package:wisata_app/widgets/category_bar/All_category_card.dart';
import 'package:wisata_app/widgets/category_bar/category_bar_versi2.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class CategoryScreen extends StatelessWidget {
  final List<PlaceBase> allplaces;

  const CategoryScreen({
    Key? key,
    required this.allplaces,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: secondaryColor,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              "assets/icons/back-icon-ijo.png",
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 35.0),
                              child: Text(
                                "Lokasi",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  fontFamily: 'Inter',
                                  color: Color(0xFF8B7E7E),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.001),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Image.asset(
                                    "assets/icons/location_default.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                const SizedBox(width: 5),
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
                          ],
                        ),
                        SizedBox(height: size.height * 0.01),
                        Container(
                          width: 2000,
                          height: 3,
                          decoration:
                              const BoxDecoration(color: Color(0xFF338A94)),
                        ),
                        SizedBox(height: size.height * 0.04),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kategori",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: 'Inter',
                                color: textDarkColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * .01),
                        CategoryRow(
                          categories: [
                            Danau(),
                            Pantai(),
                            Hutan(),
                          ],
                        ),
                        SizedBox(height: size.height * .01),
                        CategoryRow(
                          categories: [
                            Safari(),
                            Sungai(),
                            Pegunungan(),
                          ],
                        ),
                        SizedBox(height: size.height * .02),
                        const Text(
                          "Daftar Tempat Wisata",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            color: textDarkColor,
                          ),
                        ),
                        SizedBox(height: size.height * .02),
                        AllDataCard<CustomPlace>(
                          allplaces: customPlaceList as List<CustomPlace>,
                        ),
                        SizedBox(height: size.height * .02),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
