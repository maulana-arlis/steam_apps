import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class LibraryGamesScreen extends StatelessWidget {
  const LibraryGamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors, // Ubah warna background AppBar
        title: const Text(
          'Library',
          style: TextStyle(color: Colors.white), // Ubah warna title
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Ubah warna panah "back" menjadi putih
        ),
      ),
      backgroundColor: AppColors.appColors, // Ubah warna background halaman
      body: const Center(
        child: Text(
          'This is the Library page',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white, // Ubah warna teks halaman jika diperlukan
          ),
        ),
      ),
    );
  }
}
