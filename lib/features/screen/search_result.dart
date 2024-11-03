import 'package:flutter/material.dart';
import 'package:steam_apps/data/store/store_repo.dart';
import '../../core/constants/images.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/strings.dart';
import '../main/game_detail_store.dart';

class SearchResultScreen extends StatelessWidget {
  final String searchQuery;

  const SearchResultScreen({super.key, required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    // List of all games (replace with actual data if available)
    final List<Game> allGames = [
      Game(
        title: 'Hogwarts Legacy',
        imagePath: Images.hogwarts,
        description:
            'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world. ',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_rec,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'The Forest',
        imagePath: Images.theforest,
        description:
            'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator. ',
        mediaImages: [
          MediaGame.theforest1,
          MediaGame.theforest2,
          MediaGame.theforest3,
          MediaGame.theforest4,
          MediaGame.theforest5,
        ],
        systemRequirements: [
          StoreGame.theforest_min,
          StoreGame.theforest_rec,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'Ghost Tsushima',
        imagePath: Images.got,
        description:
            'A storm is coming. Venture into the complete Ghost of Tsushima DIRECTOR’S CUT on PC; forge your own path through this open-world action adventure and uncover its hidden wonders. Brought to you by Sucker Punch Productions, Nixxes Software and PlayStation Studios. ',
        mediaImages: [
          MediaGame.got1,
          MediaGame.got2,
          MediaGame.got3,
          MediaGame.got4,
          MediaGame.got5,
        ],
        systemRequirements: [
          StoreGame.got_min,
          StoreGame.got_rec,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'Dark Souls 3',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'Black Wukong',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'CyberPunk',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'Black Ops 6',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'Witcher III',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'GTA 5',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'PayDay 3',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'The Forest',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'F1 2024',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'Assetto Corsa',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'MotoGP 2024',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'Dead Islands 2',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'Left 4 Dead 2',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'Days Gone',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'Forza Horizon 4',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'HellDivers 2',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
      Game(
        title: 'GOW Ragnarok',
        imagePath: Images.hogwarts,
        description: '',
        mediaImages: [
          MediaGame.hogwarts1,
          MediaGame.hogwarts2,
          MediaGame.hogwarts3,
          MediaGame.hogwarts4,
          MediaGame.hogwarts5,
        ],
        systemRequirements: [
          StoreGame.hogwarts_min,
          StoreGame.hogwarts_min,
        ],
        genre: '',
        price: '',
      ),
    ];

    // Filter the games based on the search query (case-insensitive)
    final List<Game> filteredGames = allGames.where((game) {
      return game.title.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      backgroundColor: AppColors.appColors, // Set background color
      appBar: AppBar(
        backgroundColor: AppColors.bgColors, // Set top bar color
        title: Text(
          'Search Results for "$searchQuery"',
          style: const TextStyle(
              color: Colors.white), // Set title text color to white
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Set back icon color to white
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
                    // Navigate to GameDetailStore with the selected game
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
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white), // Set no results text color to white
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
              color: Colors.white), // Set game name color to white
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
