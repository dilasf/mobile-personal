import 'package:flutter/material.dart';
import 'package:wisata_app/utils/contants.dart';
import 'package:wisata_app/widgets/button_nav_bar.dart';
import 'package:wisata_app/models/custom_place_data.dart';
import 'package:wisata_app/screens/categoryscreens/details_screen/detail_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late FocusNode _searchFocusNode;
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchFocusNode = FocusNode();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  List<CustomPlace> get filteredPlaces {
    String query = _searchController.text.toLowerCase();
    return customPlaceList
        .where((place) =>
            place.name.toLowerCase().contains(query) ||
            place.location.toLowerCase().contains(query))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: secondaryColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * 0.03),
                const Text(
                  "Lokasi",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Color(0xFF8B7E7E),
                  ),
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
                SizedBox(height: size.height * .03),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: _searchFocusNode.hasFocus
                                ? const Color(0xFF338A94)
                                : Colors.transparent,
                          ),
                        ),
                        child: TextField(
                          focusNode: _searchFocusNode,
                          controller: _searchController,
                          decoration: const InputDecoration(
                            hintText: "Cari Tempat...",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                            ),
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 3,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Show filtered places only if the search query is not empty
                if (_searchController.text.isNotEmpty)
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredPlaces.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigate to DetailScreen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  place: filteredPlaces[index],
                                ),
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
                                            filteredPlaces[index].imageAsset),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                            filteredPlaces[index]
                                                .toggleFavorite();
                                          });
                                        },
                                        child: Icon(
                                          filteredPlaces[index].isFavorite
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          size: 15,
                                          color:
                                              filteredPlaces[index].isFavorite
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
                        );
                      },
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
