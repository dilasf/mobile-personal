import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_app/models/user_data.dart';
import 'package:wisata_app/providers/userData_provider.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Inter');

class FormEditPassword extends StatefulWidget {
  @override
  _FormEditPasswordState createState() => _FormEditPasswordState();
}

class _FormEditPasswordState extends State<FormEditPassword> {
  TextEditingController kataSandiLamaController = TextEditingController();
  TextEditingController kataSandiBaruController = TextEditingController();
  TextEditingController konfirmasiKataSandiController = TextEditingController();

  bool isKataSandiLamaVisible = false;
  bool isKataSandiBaruVisible = false;
  bool isKonfirmasiKataSandiVisible = false;

  String notificationMessage = '';

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.9;

    return Column(
      children: [
        buildPasswordField(
          'Kata Sandi Lama',
          kataSandiLamaController,
          containerWidth,
          isKataSandiLamaVisible,
          toggleKataSandiLamaVisibility,
        ),
        buildPasswordField(
          'Kata Sandi Baru',
          kataSandiBaruController,
          containerWidth,
          isKataSandiBaruVisible,
          toggleKataSandiBaruVisibility,
        ),
        buildPasswordField(
          'Konfirmasi Kata Sandi',
          konfirmasiKataSandiController,
          containerWidth,
          isKonfirmasiKataSandiVisible,
          toggleKonfirmasiKataSandiVisibility,
        ),
        const SizedBox(height: 40),
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
        const SizedBox(height: 20),
        Text(
          notificationMessage,
          style: TextStyle(
            color: notificationMessage.startsWith('Data Berhasil')
                ? Colors.green
                : Colors.red,
          ),
        ),
      ],
    );
  }

  Widget buildPasswordField(
    String label,
    TextEditingController controller,
    double containerWidth,
    bool isVisible,
    Function toggleVisibility,
  ) {
    return Container(
      width: containerWidth * 1.5,
      height: 80,
      margin: const EdgeInsets.symmetric(vertical: 3.0),
      child: Stack(
        children: [
          Positioned(
            left: 30,
            top: 30,
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFF338A94),
                fontSize: 13,
                fontWeight: FontWeight.w700,
                height: 0.05,
              ),
            ),
          ),
          Positioned(
            right: 30,
            top: 45,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  toggleVisibility();
                });
              },
              child: Icon(
                isVisible ? Icons.visibility : Icons.visibility_off,
                color: const Color(0xFF8B7E7E),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 45,
            child: Container(
              width: containerWidth - 70,
              height: 35,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF8B7E7E)),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                  controller: controller,
                  style: const TextStyle(
                    color: Color(0xFF060606),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    height: 0.05,
                  ),
                  obscureText: !isVisible,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void toggleKataSandiLamaVisibility() {
    setState(() {
      isKataSandiLamaVisible = !isKataSandiLamaVisible;
    });
  }

  void toggleKataSandiBaruVisibility() {
    setState(() {
      isKataSandiBaruVisible = !isKataSandiBaruVisible;
    });
  }

  void toggleKonfirmasiKataSandiVisibility() {
    setState(() {
      isKonfirmasiKataSandiVisible = !isKonfirmasiKataSandiVisible;
    });
  }

  void _saveChanges() {
    UserData userData = context.read<UserDataProvider>().userData;

    if (kataSandiLamaController.text != userData.kataSandi) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Data Yang Dimasukkan Tidak Sesuai'),
          duration: const Duration(seconds: 2),
        ),
      );
    } else if (kataSandiBaruController.text !=
        konfirmasiKataSandiController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Data Yang Dimasukkan Tidak Sesuai'),
          duration: const Duration(seconds: 2),
        ),
      );
    } else {
      userData.kataSandi = kataSandiBaruController.text;
      context.read<UserDataProvider>().updateUserData(userData);

      // notif sucses
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Data Telah Diperbaharui'),
          duration: const Duration(seconds: 2),
        ),
      );

      //pindah halaman
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pop(context);
      });
    }
  }
}
