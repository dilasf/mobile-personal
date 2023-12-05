abstract class PlaceBase {
  String get id;
  String get name;
  String get location;
  String get description;
  String get nilai;
  String get openDays;
  String get openTime;
  String get ticketPrice;
  String get imageAsset;
  List<String> get imageUrls;

  bool get isFavorite;
  set isFavorite(bool value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceBase && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  void toggleFavorite();
}
