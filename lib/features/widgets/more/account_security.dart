import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class AccountSecurityScreen extends StatefulWidget {
  const AccountSecurityScreen({super.key});

  @override
  _AccountSecurityScreenState createState() => _AccountSecurityScreenState();
}

class _AccountSecurityScreenState extends State<AccountSecurityScreen> {
  bool isFaceIDEnabled = true; // Status untuk Face ID
  bool is2FAEnabled = true; // Status untuk 2FA

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors, // Ubah warna background AppBar
        title: const Text(
          'Account Security',
          style: TextStyle(color: Colors.white), // Ubah warna title
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Ubah warna panah "back" menjadi putih
        ),
      ),
      backgroundColor: AppColors.appColors, // Ubah warna background halaman
      body: ListView(
        children: [
          // Face ID
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10.0), // Posisikan teks ke bawah
            child: SwitchListTile(
              title: const Text(
                'Face ID',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'Use Face ID to unlock app and approve transactions',
                style: TextStyle(color: Colors.white),
              ),
              value: isFaceIDEnabled,
              activeColor: Colors.blue,
              onChanged: (bool value) {
                setState(() {
                  isFaceIDEnabled = value;
                });
              },
              secondary: const Icon(Icons.face,
                  color: Colors.white), // Ubah warna icon jadi putih
            ),
          ),
          const Divider(), // Garis pemisah

          // Change Password
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10.0), // Posisikan teks ke bawah
            child: ListTile(
              leading: const Icon(Icons.lock_outline,
                  color: Colors.white), // Ubah warna icon jadi putih
              title: const Text(
                'Change Password',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'Update your password to something you always remember',
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.white), // Ubah warna icon jadi putih
              onTap: () {
                // Arahkan ke halaman ubah password jika diperlukan
              },
            ),
          ),
          const Divider(), // Garis pemisah

          // 2 Factor Authentication
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10.0), // Posisikan teks ke bawah
            child: SwitchListTile(
              title: const Text(
                '2 Factor Authentication',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'Activate 2FA for extra security',
                style: TextStyle(color: Colors.white),
              ),
              value: is2FAEnabled,
              activeColor: Colors.blue,
              onChanged: (bool value) {
                setState(() {
                  is2FAEnabled = value;
                });
              },
              secondary: const Icon(Icons.security,
                  color: Colors.white), // Ubah warna icon jadi putih
            ),
          ),
        ],
      ),
    );
  }
}
