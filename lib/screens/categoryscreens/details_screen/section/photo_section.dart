import 'package:flutter/material.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class PhotoSection extends StatelessWidget {
  final bool isPhotoVisible;
  final List<String> imageUrls;

  const PhotoSection({
    Key? key,
    required this.isPhotoVisible,
    required this.imageUrls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle onTap logic
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Foto',
              style: TextStyle(
                color: isPhotoVisible ? Colors.white : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isPhotoVisible)
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: imageUrls
                      .map((url) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                url,
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
