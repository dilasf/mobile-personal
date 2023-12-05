import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/models/place_base.dart';
import 'package:wisata_app/providers/favorite_provider.dart';
import 'package:wisata_app/screens/categoryscreens/details_screen/detail_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class AllDataCard<T extends PlaceBase> extends StatefulWidget {
  final List<T> allplaces;

  const AllDataCard({Key? key, required this.allplaces}) : super(key: key);

  @override
  _AllDataCardState<T> createState() => _AllDataCardState<T>();
}

Color getFavoriteColor(bool isFavorite) {
  return isFavorite ? Colors.red : Color(0xFF77797C);
}

class _AllDataCardState<T extends PlaceBase> extends State<AllDataCard<T>> {
  late FavoriteProvider favoriteProvider;

  @override
  void initState() {
    super.initState();
    favoriteProvider = Provider.of<FavoriteProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, _) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            spacing: 8.0, // Adjust the spacing between items
            runSpacing: 8.0, // Adjust the spacing between lines
            children: List.generate(
              widget.allplaces.length,
              (index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(place: widget.allplaces[index]),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(8.0),
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
                              image: AssetImage(
                                  widget.allplaces[index].imageAsset),
                              fit: BoxFit.cover,
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
                            widget.allplaces[index].name,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
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
                                  widget.allplaces[index].location,
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
                                  widget.allplaces[index].toggleFavorite();
                                  favoriteProvider
                                      .toggleFavorite(widget.allplaces[index]);
                                });
                              },
                              child: Icon(
                                Icons.favorite,
                                size: 15,
                                color: favoriteProvider
                                        .isFavorite(widget.allplaces[index])
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
                              widget.allplaces[index].nilai,
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
              ),
            ),
          ),
        );
      },
    );
  }
}
