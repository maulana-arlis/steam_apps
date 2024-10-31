import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class FriendListScreen extends StatelessWidget {
  const FriendListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        title: const Text(
          'Friends List',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Back icon color
        ),
      ),
      backgroundColor: AppColors.appColors,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle('   In Game Friends'),
                    _buildFriendTile(
                      name: 'darisee',
                      status: 'FiveM: MODERN NEXT ROLEPLAY',
                      isInGame: true,
                    ),
                    _buildFriendTile(
                      name: 'Enterprise',
                      status: 'Forza Horizon 4\nTuning their car to perfection',
                      isInGame: true,
                    ),
                    _buildFriendTile(
                      name: 'EmonS',
                      status: 'NEKOPARA Vol 5',
                      isInGame: true,
                    ),
                    const SizedBox(height: 8),
                    _buildSectionTitle('  Online Friends'),
                    _buildFriendTile(
                      name: 'Lutoi',
                      status: 'Away',
                      isInGame: false,
                    ),
                    _buildFriendTile(
                      name: 'Maza',
                      status: 'Online',
                      isInGame: false,
                    ),
                    const SizedBox(height: 8),
                    _buildSectionTitle('  Offline Friends'),
                    _buildFriendTile(
                      name: 'bear19007',
                      status: 'Last online 1 hours ago',
                      isInGame: false,
                      isOnline: false,
                    ),
                    _buildFriendTile(
                      name: 'bigsacktanuki',
                      status: 'Last online 3 hours ago',
                      isInGame: false,
                      isOnline: false,
                    ),
                    _buildFriendTile(
                      name: 'dasmunkasamuri',
                      status: 'Last online 7 hours ago',
                      isInGame: false,
                      isOnline: false,
                    ),
                    _buildFriendTile(
                      name: 'dzoex',
                      status: 'Last online 12 hours ago',
                      isInGame: false,
                      isOnline: false,
                    ),
                    _buildFriendTile(
                      name: 'Ya_Udah',
                      status: 'Last online 6 months ago',
                      isInGame: false,
                      isOnline: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildFriendTile({
    required String name,
    required String status,
    bool isInGame = false,
    bool isOnline = true,
  }) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          color:
              isInGame ? Colors.green : (isOnline ? Colors.blue : Colors.grey),
          fontWeight: isInGame ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      subtitle: Text(
        status,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
    );
  }
}
