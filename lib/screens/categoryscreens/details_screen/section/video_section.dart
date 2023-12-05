import 'package:flutter/material.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class VideoSection extends StatelessWidget {
  final bool isVideoVisible;

  const VideoSection({Key? key, required this.isVideoVisible})
      : super(key: key);

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
              'Video',
              style: TextStyle(
                color: isVideoVisible ? Colors.white : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Implement the video widget
            // You can use VideoPlayer or any widget based on your requirements
          ],
        ),
      ),
    );
  }
}
