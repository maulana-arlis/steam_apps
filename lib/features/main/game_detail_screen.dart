import 'package:flutter/material.dart';
import '../../core/constants/images.dart';
import '../../core/constants/colors.dart';

class GameDetailScreen extends StatefulWidget {
  final Map<String, dynamic> game;

  const GameDetailScreen({super.key, required this.game});

  @override
  // ignore: library_private_types_in_public_api
  _GameDetailScreenState createState() => _GameDetailScreenState();
}

class _GameDetailScreenState extends State<GameDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColors,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          backgroundColor: AppColors.bgColors,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          title: Image.asset(
            Images.logo,
            height: 50,
          ),
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.white70,
            tabs: const [
              Tab(text: "About"),
              Tab(text: "Media"),
              Tab(text: "Detail"),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildAboutTab(),
          _buildMediaTab(),
          _buildDetailTab(),
        ],
      ),
    );
  }

  Widget _buildAboutTab() {
    final systemRequirements = widget.game['systemRequirements'] ?? {};

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.game['image'] ?? 'assets/images/default.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 180,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              widget.game['description'] ?? 'No description available',
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                _tabController.animateTo(2);
              },
              child: const Row(
                children: [
                  Text(
                    "More About this Game",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "SYSTEM REQUIREMENTS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            _buildRequirement(
                "Minimum",
                systemRequirements['Minimum'] ??
                    'No minimum requirements specified.'),
            const SizedBox(height: 8),
            _buildRequirement(
                "Recommended",
                systemRequirements['Recommended'] ??
                    'No recommended requirements specified.'),
          ],
        ),
      ),
    );
  }

  Widget _buildRequirement(String requirementType, String requirementDetails) {
    return ExpansionTile(
      dense: true, // Mengurangi jarak antara judul dan konten
      title: Row(
        children: [
          Icon(
            requirementType == "Minimum" ? Icons.zoom_out : Icons.zoom_in,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Text(
            requirementType,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            requirementDetails,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _buildMediaTab() {
    final mediaList = widget.game['media'] as List<String>? ?? [];

    if (mediaList.isEmpty) {
      return const Center(
        child: Text(
          "No media available",
          style: TextStyle(color: Colors.white),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2,
        ),
        itemCount: mediaList.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              mediaList[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Widget _buildDetailTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "ABOUT THIS GAME",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(color: Colors.white54),
            const SizedBox(height: 5),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: const TextStyle(height: 1.5),
                children: _buildTextSpans(
                    widget.game['detail'] ?? 'No details available'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<TextSpan> _buildTextSpans(String text) {
    final List<TextSpan> spans = [];
    final parts = text.split('**');

    for (int i = 0; i < parts.length; i++) {
      if (i % 2 == 1) {
        spans.add(TextSpan(
          text: parts[i],
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ));
      } else {
        spans.add(TextSpan(
          text: parts[i],
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 16,
            height: 1.5,
          ),
        ));
      }
    }
    return spans;
  }
}
