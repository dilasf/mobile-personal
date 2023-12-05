import 'package:flutter/material.dart';
import 'package:wisata_app/models/category_models/popular_place.dart';
import 'package:wisata_app/models/place_base.dart';
import 'package:wisata_app/screens/categoryscreens/details_screen/section/description_section.dart';
import 'package:wisata_app/screens/categoryscreens/details_screen/section/photo_section.dart';
import 'package:wisata_app/screens/categoryscreens/details_screen/section/rating_section.dart';
import 'package:wisata_app/widgets/popular_card.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class DetailScreenBar extends StatefulWidget {
  const DetailScreenBar({
    Key? key,
    required this.onMenuTap,
    required this.place,
  }) : super(key: key);

  final Function(String) onMenuTap;
  final PlaceBase place;

  @override
  _DetailScreenBarState createState() => _DetailScreenBarState();
}

class _DetailScreenBarState extends State<DetailScreenBar> {
  WisataPopuler wisataPopulerInstance = WisataPopuler(places: popularPlaceList);

  bool isPhotoVisible = false;
  String selectedMenu = 'Deskripsi';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: _buildMenuButton('Deskripsi')),
              const SizedBox(width: 15),
              Expanded(child: _buildMenuButton('Penilaian')),
              const SizedBox(width: 25),
              Expanded(child: _buildMenuButton('Foto')),
              const SizedBox(width: 25),
              Expanded(child: _buildMenuButton('Video')),
            ],
          ),
          const SizedBox(height: 10),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    switch (selectedMenu) {
      case 'Deskripsi':
        return DescriptionSection(
          description: widget.place.description,
          openDays: widget.place.openDays,
          openTime: widget.place.openTime,
          ticketPrice: widget.place.ticketPrice,
        );
      case 'Penilaian':
        return RatingSection(rating: widget.place.nilai);
      case 'Foto':
        return PhotoSection(
          isPhotoVisible: isPhotoVisible,
          imageUrls: widget.place.imageUrls,
        );
      case 'Video':
        // return VideoSection(isVideoVisible: isVideoVisible);
        return Container();
      default:
        return Container();
    }
  }

  Widget _buildMenuButton(String title) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedMenu = title;
          isPhotoVisible = title == 'Foto';
        });
        widget.onMenuTap(title);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FractionallySizedBox(
            widthFactor: 2,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: selectedMenu == title
                    ? const Color(0xFF338A94)
                    : const Color(0xFF77797C),
                fontSize: 13,
                fontWeight:
                    selectedMenu == title ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: selectedMenu == title
                  ? const Color(0xFF338A94)
                  : const Color(0xFF77797C),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
