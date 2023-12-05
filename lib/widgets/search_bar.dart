import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/models/place_base.dart';
import 'package:wisata_app/providers/favorite_provider.dart';
import 'package:wisata_app/screens/categoryscreens/details_screen/detail_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class SearchAllData<S extends PlaceBase> extends StatefulWidget {
  final List<S> allplaces;
  final String searchQuery;

  const SearchAllData(
      {Key? key, required this.allplaces, required this.searchQuery})
      : super(key: key);

  @override
  _SearchAllDataState<S> createState() => _SearchAllDataState<S>();
}

Color getFavoriteColor(bool isFavorite) {
  return isFavorite ? Colors.red : Color(0xFF77797C);
}

class _SearchAllDataState<S extends PlaceBase> extends State<SearchAllData<S>> {
  late FavoriteProvider favoriteProvider;
  late List<S> filteredPlaces;

  @override
  void initState() {
    super.initState();
    favoriteProvider = Provider.of<FavoriteProvider>(context, listen: false);
    filteredPlaces = widget.allplaces;
  }

  @override
  void didUpdateWidget(covariant SearchAllData<S> oldWidget) {
    super.didUpdateWidget(oldWidget);
    filterPlaces();
  }

  void filterPlaces() {
    String query = widget.searchQuery.toLowerCase();
    if (query.isNotEmpty) {
      filteredPlaces = widget.allplaces
          .where((place) =>
              place.name.toLowerCase().contains(query) ||
              place.location.toLowerCase().contains(query))
          .toList();
    } else {
      filteredPlaces = widget.allplaces;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, _) {
        filterPlaces();

        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(
              filteredPlaces.length,
              (index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(place: filteredPlaces[index]),
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
                              image:
                                  AssetImage(filteredPlaces[index].imageAsset),
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
                            filteredPlaces[index].name,
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
                                  filteredPlaces[index].location,
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
                                  filteredPlaces[index].toggleFavorite();
                                  favoriteProvider
                                      .toggleFavorite(filteredPlaces[index]);
                                });
                              },
                              child: Icon(
                                Icons.favorite,
                                size: 15,
                                color: favoriteProvider
                                        .isFavorite(filteredPlaces[index])
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
                              filteredPlaces[index].nilai,
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
