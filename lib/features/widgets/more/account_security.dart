import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class AccountSecurityScreen extends StatefulWidget {
  const AccountSecurityScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AccountSecurityScreenState createState() => _AccountSecurityScreenState();
}

class _AccountSecurityScreenState extends State<AccountSecurityScreen> {
  bool isFaceIDEnabled = true;
  bool is2FAEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        title: const Text(
          'Account Security',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.appColors,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
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
              secondary: const Icon(Icons.face, color: Colors.white),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ListTile(
              leading: const Icon(Icons.lock_outline, color: Colors.white),
              title: const Text(
                'Change Password',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'Update your password to something you always remember',
                style: TextStyle(color: Colors.white),
              ),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () {},
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
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
              secondary: const Icon(Icons.security, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
