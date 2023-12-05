import 'package:flutter/material.dart';
import 'package:wisata_app/constants.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class MassageScreen extends StatelessWidget {
  const MassageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pesan Discovery Cianjur',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            double containerWidth = constraints.maxWidth * 0.9;
            double iconWidth = containerWidth * 0.15;

            return Column(
              children: [
                MassageCard(
                  imageAsset: 'assets/icons/default_logo.png',
                  greetingText: 'Hai, Sifa Fadilah.....',
                  notificationText:
                      'Tempat favorit mu buka nih.. \nAyo segera kunjungi tempat favorit mu',
                  containerWidth: containerWidth,
                  iconWidth: iconWidth,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MassageCard extends StatefulWidget {
  final String imageAsset;
  final String greetingText;
  final String notificationText;
  final double containerWidth;
  final double iconWidth;

  const MassageCard({
    Key? key,
    required this.imageAsset,
    required this.greetingText,
    required this.notificationText,
    required this.containerWidth,
    required this.iconWidth,
  }) : super(key: key);

  @override
  _MassageCardState createState() => _MassageCardState();
}

class _MassageCardState extends State<MassageCard> {
  bool isRead = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isRead = !isRead;
        });
      },
      child: Container(
        width: widget.containerWidth,
        height: 520,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 49,
              height: 47,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imageAsset),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.greetingText,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.notificationText,
                    style: const TextStyle(
                      color: Color(0xFF77797C),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const SizedBox(
                    height: 400,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: const EdgeInsets.only(left: 35),
                        child: Text(
                          'TANDAI SETELAH DIBACA',
                          style: TextStyle(
                            color:
                                isRead ? Colors.grey : const Color(0xFF338A94),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
