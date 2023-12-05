import 'package:flutter/material.dart';
import 'package:wisata_app/models/news_place.dart';
import 'package:wisata_app/utils/contants.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class NewsScreen extends StatelessWidget {
  final NewsPlace news;

  const NewsScreen({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Discovery News',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/back-icons.png',
            width: 25,
            height: 25,
          ),
          iconSize: 25,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double screenWidth = constraints.maxWidth;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          news.date,
                          style: const TextStyle(
                            color: Color(0xFF8B7E7E),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          news.category,
                          style: const TextStyle(
                            color: Color(0xFF338A94),
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    news.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth > 600 ? 30 : 20,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                      child: Text(
                        news.author,
                        style: const TextStyle(
                          color: Color(0xFF338A94),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        news.media,
                        style: const TextStyle(
                          color: Color(0xFF8B7E7E),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Image.asset(
                      news.imageAsset,
                      width: screenWidth,
                      height: screenWidth > 600 ? 600 : 300,
                      fit: BoxFit.cover,
                    ),
                    const SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Row(),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    news.description1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Text(
                        news.read,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                      child: Text(
                        news.link,
                        style: const TextStyle(
                          color: Color(0xFF338A94),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth > 600 ? 400 : 300,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.center,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: news.imageUrls.map((url) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(url),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    news.description2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 13.0),
                  child: Text(
                    news.berita,
                    style: const TextStyle(
                      color: Color(0xFF338A94),
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFF338A94),
                      height: 0,
                    ),
                    softWrap: true,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  child: Text(
                    news.link1,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                    softWrap: true,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 13.0),
                  child: Text(
                    news.link1,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                    softWrap: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 13.0, bottom: 20),
                  child: Text(
                    news.link3,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
