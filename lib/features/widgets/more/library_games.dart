import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../data/repository/repo_games.dart';

class LibraryGamesScreen extends StatefulWidget {
  LibraryGamesScreen({super.key});

  @override
  _LibraryGamesScreenState createState() => _LibraryGamesScreenState();
}

class _LibraryGamesScreenState extends State<LibraryGamesScreen> {
  // List to track selected cards by index
  int? selectedIndex;

  // Search filter state
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    // Filter the games based on search query
    final filteredGames = gamesRepository.where((game) {
      return game['title']!.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        title: const Text(
          'Library',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.appColors,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search box
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value; // Update the search query
                  });
                },
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  icon: Icon(Icons.search, color: Colors.white),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Game grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of items in a row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemCount: filteredGames.length, // Use filtered games
                itemBuilder: (context, index) {
                  final game = filteredGames[index];
                  final isSelected =
                      selectedIndex == index; // Check if the card is selected

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex =
                            index; // Update the selected index on tap
                      });
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: isSelected
                                  ? Border.all(
                                      color: Colors.blue,
                                      width: 3.0) // Blue border if selected
                                  : Border.all(
                                      color: Colors.transparent,
                                      width: 3.0), // No border if not selected
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                game['image']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          game['title']!,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
