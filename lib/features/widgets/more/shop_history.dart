import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class ShopHistoryScreen extends StatelessWidget {
  const ShopHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        title: const Text(
          'Shop History',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.appColors,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildHistoryCard(
              date: "12 MAR 2024",
              title: "Dying Light",
              subtitle: "Credit Card",
              price: "\$ 20",
              iconPath: Icons.credit_card_outlined,
            ),
            const SizedBox(height: 12),
            _buildHistoryCard(
              date: "28 JUL 2024",
              title: "Metro: Exodus",
              subtitle: "Paypal",
              price: "\$ 50",
              iconPath: Icons.paypal_outlined,
            ),
            const SizedBox(height: 12),
            _buildHistoryCard(
              date: "5 NOV 2024",
              title: "Outlast II",
              subtitle: "Steam Wallet",
              price: "\$ 45",
              iconPath: Icons.account_balance_wallet,
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
    required IconData iconPath,
  }) {
    return Card(
      elevation: 3,
      color: AppColors.bgColors,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(iconPath, size: 40, color: Colors.white),
            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
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
                      color: Colors.white70,
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
                    color: Colors.white70,
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
