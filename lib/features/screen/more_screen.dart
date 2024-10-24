import 'package:flutter/material.dart';
import '../widgets/more/shop_history.dart';
import '../widgets/more/library_games.dart';
import '../widgets/more/account_security.dart';
import '../widgets/more/share_family.dart';
import '../widgets/more/payment_method.dart';
import '../widgets/more/contact_detail.dart';
import '../../core/constants/colors.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColors, // Warna latar belakang gelap
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20), // Jarak dari atas
            const Text(
              '   ACCOUNT DETAIL',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20), // Jarak antar item
            _buildListItem(0, Icons.shopping_cart, 'Shop History', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ShopHistoryScreen()),
              );
            }),
            _buildListItem(1, Icons.menu, 'Library Games', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LibraryGamesScreen()),
              );
            }),
            _buildListItem(2, Icons.lock, 'Account Security', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AccountSecurityScreen()),
              );
            }),
            _buildListItem(3, Icons.group, 'Share and Family', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ShareFamilyScreen()),
              );
            }),
            _buildListItem(4, Icons.payment, 'Payment Method', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PaymentMethodScreen()),
              );
            }),
            _buildListItem(5, Icons.person, 'Contact Detail', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ContactDetailScreen()),
              );
            }),
            const Spacer(),
            Center(
              child: TextButton(
                onPressed: () {
                  // Aksi ketika Log Out diklik
                },
                child: const Text(
                  'Log Out',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            const SizedBox(height: 20), // Jarak dari bawah
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(
      int index, IconData icon, String title, VoidCallback onTap) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        onTap(); // Panggil fungsi yang diberikan untuk onTap
      },
      child: ListTile(
        leading: Icon(
          icon,
          color: _selectedIndex == index
              ? Colors.blue
              : Colors.white, // Ubah warna ikon saat ditekan
        ),
        title: Text(
          title,
          style: TextStyle(
            color: _selectedIndex == index
                ? Colors.blue
                : Colors.white, // Ubah warna teks saat ditekan
          ),
        ),
      ),
    );
  }
}
