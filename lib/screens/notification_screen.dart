import 'package:flutter/material.dart';
import 'package:wisata_app/constants.dart';
import 'package:wisata_app/screens/notif_screen/massage_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class NotifScreen extends StatelessWidget {
  const NotifScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifikasi',
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
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MassageScreen(),
              ),
            );
          },
          child: LayoutBuilder(
            builder: (context, constraints) {
              double containerWidth = constraints.maxWidth * 0.99;
              double iconWidth = containerWidth * 0.15;
              double textContainerWidth = containerWidth - iconWidth - 10;

              return Container(
                width: containerWidth,
                height: 55,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: iconWidth,
                      height: 47,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/icons/default_logo.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: textContainerWidth,
                            height: 14,
                            child: const Text(
                              'Hai, Sifa Fadilah.....',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: textContainerWidth,
                            height: 16,
                            child: const Text(
                              'Tempat favorit mu buka nih..',
                              style: TextStyle(
                                color: Color(0xFF77797C),
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
