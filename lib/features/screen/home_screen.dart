import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:
          AppColors.appColors, // Ganti dengan warna yang diinginkan
      body: Center(
        child: Text(
          'Home Screen',
          style: TextStyle(
              fontSize: 24,
              color: Colors.white), // Tambahkan style teks jika diperlukan
        ),
      ),
    );
  }
}
