import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/constants.dart';
import 'package:wisata_app/models/place_base.dart';
import 'package:wisata_app/providers/favorite_provider.dart';
import 'package:wisata_app/widgets/button_nav_bar.dart';
import 'package:wisata_app/screens/categoryscreens/details_screen/detail_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class FavoritScreen extends StatelessWidget {
  const FavoritScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var favoriteProvider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Row(
          children: [
            const Text(
              'Kesukaan Saya',
              style: TextStyle(
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
      body: Consumer<FavoriteProvider>(
        builder: (context, favoriteProvider, child) {
          var favorites = favoriteProvider.favorites;

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              PlaceBase place = favorites[index];

              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(place: place),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(
                          place.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place.name,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 11,
                                  color: Color(0xFF8B7E7E),
                                ),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    place.location,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF8B7E7E),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    favoriteProvider.toggleFavorite(place);
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    size: 17,
                                    color: favoriteProvider.isFavorite(place)
                                        ? Colors.red
                                        : const Color(0xFF8B7E7E),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 2),
                            Row(
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
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF8B7E7E),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: const ButtonNavBar(selectedMenu: MenuState.home),
    );
  }
}
