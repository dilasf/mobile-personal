import 'package:flutter/material.dart';
import 'package:wisata_app/models/category_models/category_menu_places.dart';
import 'package:wisata_app/screens/categoryscreens/beach_screen.dart';
import 'package:wisata_app/screens/categoryscreens/forest_screen.dart';
import 'package:wisata_app/screens/categoryscreens/lake_situ_screen.dart';
import 'package:wisata_app/screens/categoryscreens/mountains_screen.dart';
import 'package:wisata_app/screens/categoryscreens/river_screen.dart';
import 'package:wisata_app/screens/categoryscreens/safari_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

enum CategoryState { danau, pantai, hutan, safari, pegunungan, sungai }

class ButtonCategoryBar extends StatelessWidget {
  const ButtonCategoryBar({
    Key? key,
    required this.categoryMenu,
  }) : super(key: key);

  final CategoryState categoryMenu;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var index = 0;
              index < CategoryData.categoryNames.length;
              index++)
            CategoryButton(
              imageSrc:
                  "assets/icons/${CategoryData.categoryNames[index]}-ijo.png",
              label: CategoryData.categoryLabels[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => categoryScreens[index](),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String imageSrc;
  final String label;
  final VoidCallback onTap;

  const CategoryButton({
    required this.imageSrc,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          width: 95,
          height: 35,
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
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageSrc),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
