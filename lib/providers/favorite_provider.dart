import 'package:flutter/material.dart';
import 'package:wisata_app/models/place_base.dart';

class FavoriteProvider extends ChangeNotifier {
  List<PlaceBase> _favorites = [];

  List<PlaceBase> get favorites => _favorites;

  void toggleFavorite(PlaceBase place) {
    if (_favorites.contains(place)) {
      _favorites.remove(place);
    } else {
      _favorites.add(place);
    }
    notifyListeners();
  }

  bool isFavorite(PlaceBase place) {
    return _favorites.contains(place);
  }
}
