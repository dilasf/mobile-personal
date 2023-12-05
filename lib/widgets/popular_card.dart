import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/models/category_models/popular_place.dart';
import 'package:wisata_app/providers/favorite_provider.dart';
import 'package:wisata_app/screens/categoryscreens/details_screen/detail_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class WisataPopuler extends StatefulWidget {
  final List<PopularPlace> places;

  const WisataPopuler({Key? key, required this.places}) : super(key: key);

  @override
  _WisataPopulerState createState() => _WisataPopulerState();
}

class _WisataPopulerState extends State<WisataPopuler> {
  late FavoriteProvider favoriteProvider;

  @override
  void initState() {
    super.initState();
    favoriteProvider = Provider.of<FavoriteProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    favoriteProvider = Provider.of<FavoriteProvider>(context, listen: false);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          widget.places.length,
          (index) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailScreen(place: widget.places[index]),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(8.0),
              width: 136,
              height: 200,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.places[index].imageAsset),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.transparent
                          ],
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.places[index].name,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 12,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                widget.places[index].location,
                                style: const TextStyle(
                                  fontSize: 9,
                                  color: Colors.grey,
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  var favoriteProvider =
                                      Provider.of<FavoriteProvider>(
                                    context,
                                    listen: false,
                                  );
                                  favoriteProvider
                                      .toggleFavorite(widget.places[index]);

                                  setState(() {});
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                  child: Icon(
                                    Icons.favorite,
                                    size: 17,
                                    color: favoriteProvider
                                            .isFavorite(widget.places[index])
                                        ? Colors.red
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.yellow,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                widget.places[index].nilai,
                                style: const TextStyle(
                                  fontSize: 9,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
