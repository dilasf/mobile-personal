import 'package:wisata_app/models/place_base.dart';

class FavoritData {
  static final FavoritData _instance = FavoritData._internal();

  factory FavoritData() {
    return _instance;
  }

  FavoritData._internal();

  List<PlaceBase> _favoritList = [];

  List<PlaceBase> get favoritList => _favoritList;

  void addToFavorit(PlaceBase place) {
    if (!_favoritList.contains(place)) {
      _favoritList.add(place);
    }
  }

  void removeFromFavorit(PlaceBase place) {
    _favoritList.remove(place);
  }

  bool isFavorite(PlaceBase place) {
    return _favoritList.contains(place);
  }
}
