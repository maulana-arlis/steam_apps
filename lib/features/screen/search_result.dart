// search_result.dart
import 'package:flutter/material.dart';
import 'package:steam_apps/data/store/store_repo.dart';
import '../../core/constants/colors.dart';
import '../main/game_detail_store.dart';
import '../../data/search/search_repo.dart';

class SearchResultScreen extends StatelessWidget {
  final String searchQuery;

  const SearchResultScreen({super.key, required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    // Mengambil daftar semua game dari SearchRepo
    final List<Game> allGames = SearchRepo.getAllGames();

    // Filter game berdasarkan query pencarian (tidak peka huruf besar/kecil)
    final List<Game> filteredGames = allGames.where((game) {
      return game.title.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      backgroundColor: AppColors.appColors,
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        title: Text(
          'Search Results for "$searchQuery"',
          style: const TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: filteredGames.isNotEmpty
          ? GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: filteredGames.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameDetailStore(
                          game: filteredGames[index],
                          mediaImages: filteredGames[index].mediaImages,
                          imagePath: filteredGames[index].imagePath,
                          description: filteredGames[index].description,
                          title: filteredGames[index].title,
                          systemRequirements:
                              filteredGames[index].systemRequirements,
                        ),
                      ),
                    );
                  },
                  child: GameCard(
                    name: filteredGames[index].title,
                    imagePath: filteredGames[index].imagePath,
                  ),
                );
              },
            )
          : Center(
              child: Text(
                'No games found for "$searchQuery"',
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
    );
  }
}

class GameCard extends StatelessWidget {
  final String name;
  final String imagePath;

  const GameCard({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
