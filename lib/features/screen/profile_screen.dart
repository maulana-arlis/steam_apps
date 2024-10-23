import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';
import '../widgets/game_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                    const Text(
                      'Maulana Arlis',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Admin',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
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
          GameCard(imagePath: Images.forza),
          GameCard(imagePath: Images.readyornot),
          GameCard(imagePath: Images.eldenring),
          GameCard(imagePath: Images.stray),
          GameCard(imagePath: Images.wildlands),
        ],
      ),
    );
  }
}
