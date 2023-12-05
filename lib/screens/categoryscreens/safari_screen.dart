import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/models/category_models/animal_park_place.dart';
import 'package:wisata_app/providers/favorite_provider.dart';
import 'package:wisata_app/screens/categoryscreens/details_screen/detail_screen.dart';
import 'package:wisata_app/utils/contants.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class SafariScreen extends StatefulWidget {
  const SafariScreen({Key? key}) : super(key: key);

  @override
  _SafariScreenState createState() => _SafariScreenState();
}

class _SafariScreenState extends State<SafariScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Row(
          children: [
            const Text(
              'Kategori',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8),
            Image.asset(
              'assets/icons/hewan-putih.png',
              width: 30,
              height: 30,
            ),
          ],
        ),
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
      body: SingleChildScrollView(
        child: Container(
          color: secondaryColor,
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(left: 15),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (context, index) {
              final SafariPlace place = safariPlaceList[index];
              final favoriteProvider = Provider.of<FavoriteProvider>(context);

              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailScreen(place: place);
                      },
                    ),
                  );
                },
                child: Container(
                  width: 136,
                  height: 178,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 136,
                          height: 178,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 6,
                        top: 5,
                        child: Container(
                          width: 125,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(place.imageAsset),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8,
                        top: 120,
                        child: SizedBox(
                          width: 77,
                          height: 17,
                          child: Text(
                            place.name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 135,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 12,
                                  color: Color(0xFF77797C),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  place.location,
                                  style: const TextStyle(
                                    color: Color(0xFF77797C),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 50),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  place.toggleFavorite();
                                  favoriteProvider.toggleFavorite(place);
                                });
                              },
                              child: Icon(
                                Icons.favorite,
                                size: 15,
                                color: favoriteProvider.isFavorite(place)
                                    ? Colors.red
                                    : Color(0xFF77797C),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 155,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.yellow,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              place.nilai,
                              style: const TextStyle(
                                fontSize: 9,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: safariPlaceList.length,
          ),
        ),
      ),
    );
  }
}
