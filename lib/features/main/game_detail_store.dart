import 'package:flutter/material.dart';
import '../../data/store/store_repo.dart';
import '../../core/constants/colors.dart';

class GameDetailStore extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;
  final List<String> systemRequirements;

  const GameDetailStore({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.systemRequirements,
    required Game game,
  });

  @override
  _GameDetailStoreState createState() => _GameDetailStoreState();
}

class _GameDetailStoreState extends State<GameDetailStore> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColors,
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Go back to the previous screen
          },
        ),
        title: const Text(
          "Game Detail",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Game image and title
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      widget.imagePath,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Tabs for About, Media, Analysis
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTab("About", 0),
                  _buildTab("Media", 1),
                  _buildTab("Analysis", 2),
                ],
              ),
              const SizedBox(height: 15),

              // Content based on selected tab
              if (selectedTab == 0) ...[
                Text(
                  widget.description,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "More About this Game >",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // System Requirements - Only shown in About tab
                const Text(
                  "SYSTEM REQUIREMENTS",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 10),
                _buildRequirement("Minimum"),
                const SizedBox(height: 10),
                _buildRequirement("Recommended"),
              ] else if (selectedTab == 1) ...[
                const Center(
                  child: Text(
                    'Media content goes here.',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ] else if (selectedTab == 2) ...[
                const Center(
                  child: Text(
                    'Analysis content goes here.',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTab(String label, int index) {
    return GestureDetector(
      onTap: () => setState(() => selectedTab = index),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              color: selectedTab == index ? Colors.blue : Colors.grey,
              fontSize: 16,
              fontWeight:
                  selectedTab == index ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          if (selectedTab == index)
            Container(
              margin: const EdgeInsets.only(top: 6),
              height: 3,
              width: 30,
              color: Colors.white,
            ),
        ],
      ),
    );
  }

  Widget _buildRequirement(String label) {
    return Row(
      children: [
        Icon(
          label == "Minimum" ? Icons.zoom_out : Icons.zoom_in,
          color: Colors.white,
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }
}
