// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../data/store/store_repo.dart';
import '../../core/constants/colors.dart';
import '../../data/analysis_game.dart';

class GameDetailStore extends StatefulWidget {
  final Game game;

  const GameDetailStore({
    super.key,
    required this.game,
    required List mediaImages,
    required String imagePath,
    required String description,
    required String title,
    required List<String> systemRequirements,
  });

  @override
  _GameDetailStoreState createState() => _GameDetailStoreState();
}

class _GameDetailStoreState extends State<GameDetailStore> {
  int selectedTab = 0;
  bool isMinimumExpanded = false;
  bool isRecommendedExpanded = false;

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
                      widget.game.imagePath,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.game.title,
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
                  widget.game.description,
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
                const Text(
                  "SYSTEM REQUIREMENTS",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 10),
                _buildRequirement("Minimum", isMinimumExpanded,
                    widget.game.systemRequirements[0], () {
                  setState(() {
                    isMinimumExpanded = !isMinimumExpanded;
                  });
                }),
                const SizedBox(height: 10),
                _buildRequirement("Recommended", isRecommendedExpanded,
                    widget.game.systemRequirements[1], () {
                  setState(() {
                    isRecommendedExpanded = !isRecommendedExpanded;
                  });
                }),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add to cart functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.green, // Green background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Same border radius
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                        ),
                        child: const Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Colors.white, // White text color
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue, // Set background color to blue
                        borderRadius: BorderRadius.circular(
                            8.0), // Same border radius as Add to Cart button
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Cart icon functionality
                        },
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white, // White icon color
                        ),
                        padding: const EdgeInsets.all(12.0),
                      ),
                    ),
                  ],
                ),
              ] else if (selectedTab == 1) ...[
                widget.game.mediaImages.isNotEmpty
                    ? GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 2,
                        ),
                        itemCount: widget.game.mediaImages.length,
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Mengatur border radius
                            child: Image.asset(
                              widget.game.mediaImages[index],
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      )
                    : const Center(
                        child: Text(
                          'No media available',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ] else if (selectedTab == 2) ...[
                const GameDetailAnalysisTab(),
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

  Widget _buildRequirement(
      String label, bool isExpanded, String details, VoidCallback onTap) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
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
              const Spacer(),
              Icon(
                isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ],
          ),
        ),
        if (isExpanded)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              details,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
