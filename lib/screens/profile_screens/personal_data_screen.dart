import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/image_picker/image_picker_profil.dart';
import 'package:wisata_app/models/user_data.dart';
import 'package:wisata_app/providers/userData_provider.dart';
import 'package:wisata_app/screens/profile_screens/form/form_personal-data.dart';
import 'package:wisata_app/utils/contants.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class PersonalDataScreen extends StatefulWidget {
  const PersonalDataScreen({Key? key}) : super(key: key);

  @override
  _PersonalDataScreenState createState() => _PersonalDataScreenState();
}

class _PersonalDataScreenState extends State<PersonalDataScreen> {
  String selectedImagePath = '';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    UserData userData = context.watch<UserDataProvider>().userData;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profil',
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
      body: Container(
        width: double.infinity,
        color: secondaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 150,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ImagePickerWidget(
                      onImageSelected: (imagePath) {
                        setState(() {
                          selectedImagePath = imagePath;
                        });
                      },
                    ),
                    if (selectedImagePath.isNotEmpty)
                      Image.network(
                        selectedImagePath,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: FormPersonalData(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
