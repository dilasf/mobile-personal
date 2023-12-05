import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/models/user_data.dart';
import 'package:wisata_app/providers/userData_provider.dart';
import 'package:wisata_app/utils/contants.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class FormPersonalData extends StatefulWidget {
  @override
  _FormPersonalDataState createState() => _FormPersonalDataState();
}

class _FormPersonalDataState extends State<FormPersonalData> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController kataSandiController = TextEditingController();
  TextEditingController jenisKelaminController = TextEditingController();
  TextEditingController tempatLahirController = TextEditingController();
  TextEditingController tanggalLahirController = TextEditingController();
  TextEditingController alamatController = TextEditingController();

  String selectedGender = '';

  @override
  void initState() {
    super.initState();
    UserData userData = context.read<UserDataProvider>().userData;

    namaController.text = userData.nama;
    emailController.text = userData.email;
    kataSandiController.text = userData.kataSandi;
    jenisKelaminController.text = userData.jenisKelamin;
    tempatLahirController.text = userData.tempatLahir;
    tanggalLahirController.text = userData.tanggalLahir;
    alamatController.text = userData.alamat;

    selectedGender = userData.jenisKelamin;
    jenisKelaminController.text = selectedGender;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: Color(0xFF338A94),
              onPrimary: Colors.white,
            ),
            dialogBackgroundColor: Colors.greenAccent[50],
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != DateTime.now()) {
      setState(() {
        tanggalLahirController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  Widget buildTwoFieldsRow(String label1, TextEditingController controller1,
      String label2, TextEditingController controller2, double screenWidth,
      {bool readOnly1 = false,
      bool readOnly2 = false,
      void Function()? onTap}) {
    double containerWidth = screenWidth * 1;

    return Padding(
      padding: const EdgeInsets.only(left: 22.0),
      child: Column(
        children: [
          Row(
            children: [
              buildFormField(label1, controller1, containerWidth * 0.45,
                  readOnly: readOnly1),
              SizedBox(width: containerWidth * 0.05),
              buildFormField(label2, controller2, containerWidth * 0.45,
                  readOnly: readOnly2, onTap: onTap),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFormField(
      String label, TextEditingController controller, double screenWidth,
      {bool isPassword = false,
      bool readOnly = false,
      void Function()? onTap}) {
    double containerWidth = screenWidth * 1;

    if (label == 'Tanggal Lahir') {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: containerWidth * 1,
          height: 70,
          decoration: const BoxDecoration(color: secondaryColor),
          child: Stack(
            children: [
              Positioned(
                left: 15,
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF338A94),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 15,
                child: Container(
                  width: containerWidth * 0.9,
                  height: 35,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFF8B7E7E)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    controller: controller,
                    readOnly: true,
                    onTap: onTap,
                    style: const TextStyle(
                      color: Color(0xFF090A0A),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      height: 2.5,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 5),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Icon(
                          Icons.calendar_today,
                          color: Color(0xFF8B7E7E),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (label == 'Jenis Kelamin') {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: containerWidth * 0.9,
          height: 70,
          decoration: const BoxDecoration(color: secondaryColor),
          child: Stack(
            children: [
              Positioned(
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF338A94),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 15,
                child: Container(
                  width: containerWidth * 0.9,
                  height: 35,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFF8B7E7E)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextFormField(
                    controller: controller,
                    readOnly: true,
                    onTap: onTap,
                    style: const TextStyle(
                      color: Color(0xFF090A0A),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      height: 2.5,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF8B7E7E),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        width: containerWidth * 0.9,
        height: 70,
        decoration: const BoxDecoration(color: secondaryColor),
        child: Stack(
          children: [
            Positioned(
              child: Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF338A94),
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  height: 0.06,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 15,
              child: Container(
                width: containerWidth * 0.9,
                height: 35,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF8B7E7E)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: isPassword
                    ? TextFormField(
                        controller: controller,
                        readOnly: readOnly,
                        onTap: onTap,
                        obscureText: true,
                        style: const TextStyle(
                          color: Color(0xFF090A0A),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          height: 0.5,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                        ),
                      )
                    : TextFormField(
                        controller: controller,
                        onTap: onTap,
                        readOnly: readOnly,
                        style: const TextStyle(
                          color: Color(0xFF090A0A),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          height: 0.5,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          buildFormField('Nama', namaController, screenWidth),
          buildFormField('Email', emailController, screenWidth),
          buildFormField('Kata Sandi', kataSandiController, screenWidth,
              isPassword: true, readOnly: true),
          buildFormField('Jenis Kelamin', jenisKelaminController, screenWidth,
              onTap: () => _showGenderPicker(context)),
          buildTwoFieldsRow(
            'Tempat Lahir',
            tempatLahirController,
            'Tanggal Lahir',
            tanggalLahirController,
            screenWidth,
            readOnly2: true,
            onTap: () => _selectDate(context),
          ),
          buildFormField('Alamat', alamatController, screenWidth),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: _saveChanges,
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF338A94),
            ),
            child: const Text(
              'Simpan Perubahan',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 37),
        ],
      ),
    );
  }

  void _saveChanges() {
    UserData userData = context.read<UserDataProvider>().userData;
    userData.nama = namaController.text;
    userData.email = emailController.text;
    userData.kataSandi = kataSandiController.text;
    userData.jenisKelamin = selectedGender;
    userData.tempatLahir = tempatLahirController.text;
    userData.tanggalLahir = tanggalLahirController.text;
    userData.alamat = alamatController.text;

    context.read<UserDataProvider>().updateUserData(userData);

    // notifikasi
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Data Telah Diperbaharui'),
        duration: const Duration(seconds: 1),
      ),
    );

    Navigator.pop(context);
  }

  void _showGenderPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                title: const Text('- Pilih Data -'),
                onTap: () {
                  setState(() {
                    selectedGender = '- Pilih Data -';
                    jenisKelaminController.text = selectedGender;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Laki-laki'),
                onTap: () {
                  setState(() {
                    selectedGender = 'Laki-laki';
                    jenisKelaminController.text = selectedGender;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Perempuan'),
                onTap: () {
                  setState(() {
                    selectedGender = 'Perempuan';
                    jenisKelaminController.text = selectedGender;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
