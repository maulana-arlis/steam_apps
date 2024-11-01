import 'package:flutter/material.dart';
import '../../data/store/store_repo.dart';
import '../../core/constants/colors.dart';

class GameDetailStore extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;
  final List<String> systemRequirements;
  final List<String> mediaImages; // Tambahkan parameter ini

  const GameDetailStore({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.systemRequirements,
    required this.mediaImages,
    required Game game, // Tambahkan parameter ini
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
            Navigator.of(context).pop();
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTab("About", 0),
                  _buildTab("Media", 1),
                  _buildTab("Analysis", 2),
                ],
              ),
              const SizedBox(height: 15),
              if (selectedTab == 0) ...[
                Text(
                  widget.description,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 30),
              ] else if (selectedTab == 1) ...[
                _buildMediaTab(), // Panggil method untuk menampilkan media
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

  Widget _buildMediaTab() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: widget.mediaImages.length,
      itemBuilder: (context, index) {
        return Image.asset(
          widget.mediaImages[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}
