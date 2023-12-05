import 'package:flutter/material.dart';
import 'package:wisata_app/models/category_models/category_menu_places.dart';
import 'package:wisata_app/screens/categoryscreens/beach_screen.dart';
import 'package:wisata_app/screens/categoryscreens/forest_screen.dart';
import 'package:wisata_app/screens/categoryscreens/lake_situ_screen.dart';
import 'package:wisata_app/screens/categoryscreens/mountains_screen.dart';
import 'package:wisata_app/screens/categoryscreens/river_screen.dart';
import 'package:wisata_app/screens/categoryscreens/safari_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class Danau extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildCategory(context, 0);
  }
}

class Pantai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildCategory(context, 1);
  }
}

class Hutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildCategory(context, 2);
  }
}

class Safari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildCategory(context, 3);
  }
}

class Sungai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildCategory(context, 4);
  }
}

class Pegunungan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildCategory(context, 5);
  }
}

Widget buildCategory(BuildContext context, int index) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => categoryScreens[index](),
        ),
      );
    },
    child: Container(
      margin: const EdgeInsets.all(8),
      child: Container(
        width: 90,
        height: 36,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icons/${CategoryData.categoryIcons[index]}.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Text(
              CategoryData.categoryLabels[index],
              style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                height: 1.0,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class CategoryRow extends StatelessWidget {
  final List<Widget> categories;

  CategoryRow({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: categories,
    );
  }
}

final List<Widget Function()> categoryScreens = [
  () => const DanauSituScreen(),
  () => const PantaiScreen(),
  () => const HutanScreen(),
  () => const SafariScreen(),
  () => const PegununganScreen(),
  () => const SungaiScreen(),
];
