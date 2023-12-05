import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/models/category_models/popular_place.dart';
import 'package:wisata_app/models/place_base.dart';
import 'package:wisata_app/providers/favorite_provider.dart';
import 'package:wisata_app/widgets/detail_screen_bar.dart';
import 'package:wisata_app/widgets/popular_card.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class DetailScreen extends StatelessWidget {
  final PlaceBase place;

  const DetailScreen({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WisataPopuler wisataPopulerInstance =
        WisataPopuler(places: popularPlaceList);

    double nilai = double.tryParse(place.nilai) ?? 0.0;
    int intValue = nilai.floor();
    double decimalPart = nilai - intValue;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    child: Image.asset(
                      place.imageAsset,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/icons/back-icon-ijo.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          place.name,
                          style: const TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      FavoritButton(place: place),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  for (int i = 0; i < intValue; i++)
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  if (decimalPart > 0)
                    const Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                    ),
                  for (int i = 0;
                      i < 5 - intValue - (decimalPart > 0 ? 1 : 0);
                      i++)
                    const Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                  const SizedBox(width: 8),
                  Text(
                    place.nilai,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            DetailScreenBar(
              onMenuTap: (String menu) {
                // Implement any logic related to menu taps
                print('Selected menu: $menu');
              },
              place: place,
            ),
          ],
        ),
      ),
    );
  }
}

class FavoritButton extends StatelessWidget {
  final PlaceBase place;

  const FavoritButton({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isFavorite = Provider.of<FavoriteProvider>(context).isFavorite(place);

    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: isFavorite ? Colors.red : Colors.grey,
        size: 30.0,
      ),
      onPressed: () {
        Provider.of<FavoriteProvider>(context, listen: false)
            .toggleFavorite(place);
      },
    );
  }
}
