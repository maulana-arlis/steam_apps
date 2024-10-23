import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // Index untuk menyimpan teks yang sedang ditekan
  int? selectedTextIndex;

  // Daftar teks yang diinginkan
  final List<String> categories = [
    'New on Steam',
    'Shooter',
    'Adventure',
    'Race',
    'Simulation',
    'Strategy',
    'Sports',
    'Souls Like'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          AppColors.appColors, // Ganti dengan warna yang diinginkan
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Kotak pencarian di tengah dengan ikon pencarian
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon:
                      const Icon(Icons.search), // Tambahkan ikon pencarian
                ),
              ),
              // Tambahkan jarak antara search box dan teks
              const SizedBox(
                  height: 50), // Jarak vertikal antara kotak pencarian dan teks

              // Daftar teks yang bisa ditekan
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(categories.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTextIndex =
                            index; // Hanya satu teks yang dipilih
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 18,
                          // Jika index adalah 0 (New on Steam), warna default biru, berubah putih saat ditekan
                          color: index == 0
                              ? (selectedTextIndex == index
                                  ? Colors.white
                                  : Colors.blue)
                              // Jika bukan index 0, gunakan warna normal
                              : (selectedTextIndex == index
                                  ? Colors.blue
                                  : Colors.white),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
