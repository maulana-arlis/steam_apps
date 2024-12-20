import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';
import '../../data/model/game_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _userName = 'Maulana Arlis';
  final String _userNickname = 'Rytex';

  // Text editing controller for the name input
  final TextEditingController _nameController = TextEditingController();

  void _editName() {
    // Set initial value of the controller
    _nameController.text = _userName;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Name'),
          content: TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: 'Enter your new name',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _userName = _nameController.text;
                });
                Navigator.of(context).pop(); // Close dialog
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColors,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage(Images.avatar),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _userNickname,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: _editName,
                      child: const Text(
                        'Edit',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Badge, Games, Friends
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileStat(title: 'Badges', value: '72'),
                  ProfileStat(title: 'Games', value: '84'),
                  ProfileStat(title: 'Friends', value: '15'),
                ],
              ),
              const SizedBox(height: 24),

              // Recent Played
              const SectionTitle(title: 'RECENT PLAYED'),
              const SizedBox(height: 16),
              const ProfileGamesGrid(),

              // Favorites
              const SizedBox(height: 24),
              const SectionTitle(title: 'FAVORITES'),
              const SizedBox(height: 16),
              const ProfileGamesGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileStat extends StatelessWidget {
  final String title;
  final String value;

  const ProfileStat({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ProfileGamesGrid extends StatelessWidget {
  const ProfileGamesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          GameCard(
            imagePath: Images.forza,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.readyornot,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.eldenring,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.exodus,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.rdr,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.stray,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.wildlands,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.breakpoint,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.watchdogs,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.watchdogs2,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.outlast,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.outlast2,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.farcry3,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.farcry4,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.farcry5,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.dyinglight,
            showPrice: false,
          ),
          GameCard(
            imagePath: Images.dyinglight2,
            showPrice: false,
          ),
        ],
      ),
    );
  }
}
