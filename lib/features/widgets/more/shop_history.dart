import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class ShopHistoryScreen extends StatelessWidget {
  const ShopHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors, // Ubah warna background AppBar
        title: const Text(
          'Shop History',
          style: TextStyle(color: Colors.white), // Ubah warna title
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Ubah warna panah "back" menjadi putih
        ),
      ),
      backgroundColor: AppColors.appColors, // Ubah warna background halaman
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildHistoryCard(
              date: "12 MAR 2024",
              title: "Assassin's Creed Mirage",
              subtitle: "Credit Card",
              price: "\$ 89.90",
              iconPath: Icons
                  .credit_card_outlined, // Ganti dengan gambar atau ikon yang diinginkan
            ),
            const SizedBox(height: 12), // Spasi antar kartu
            _buildHistoryCard(
              date: "28 JUL 2024",
              title: "Metro: Exodus",
              subtitle: "Paypal",
              price: "\$ 72.25",
              iconPath: Icons
                  .paypal_outlined, // Ganti dengan gambar atau ikon yang diinginkan
            ),
            const SizedBox(height: 12), // Spasi antar kartu
            _buildHistoryCard(
              date: "5 NOV 2024",
              title: "Outlast II",
              subtitle: "Steam Wallet",
              price: "\$ 45.50",
              iconPath: Icons
                  .account_balance_wallet, // Ganti dengan gambar atau ikon yang diinginkan
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryCard({
    required String date,
    required String title,
    required String subtitle,
    required String price,
    required IconData iconPath, // Ganti dengan gambar jika diperlukan
  }) {
    return Card(
      elevation: 3,
      color: AppColors.bgColors, // Pertahankan warna latar belakang
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(8.0), // Membuat sudut kartu membulat
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Icon atau Gambar
            Icon(iconPath,
                size: 40,
                color: Colors
                    .white), // Contoh menggunakan ikon, bisa diganti dengan Image.asset
            const SizedBox(width: 16),

            // Kolom untuk tanggal, judul, dan detail subscription
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tanggal dan Nama
                  Text(
                    date,
                    style: const TextStyle(
                      color: Colors
                          .white70, // Warna teks lebih terang untuk tanggal dan nama
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  // Judul dan Subtitle
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white70, // Warna teks subtitle lebih terang
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            // Informasi Harga
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Total",
                  style: TextStyle(
                    color:
                        Colors.white70, // Warna teks lebih terang untuk 'Total'
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
