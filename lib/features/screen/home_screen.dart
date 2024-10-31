import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import '../widgets/game_card.dart';
import '../../data/store/store_repo.dart'; // Mengimpor store_repo.dart

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0; // Untuk mengontrol tab yang dipilih
  List<Game> displayedGames = []; // Daftar game yang akan ditampilkan

  @override
  void initState() {
    super.initState();
    // Set default displayed games
    displayedGames =
        newAndTrendingGames; // Menampilkan game New & Trending secara default
  }

  void updateDisplayedGames(int tabIndex) {
    setState(() {
      switch (tabIndex) {
        case 0:
          displayedGames = newAndTrendingGames;
          break;
        case 1:
          displayedGames = topSellersGames;
          break;
        case 2:
          displayedGames = upcomingGames;
          break;
        case 3:
          displayedGames = specialsGames;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColors,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Featured Section
              const Text(
                'FEATURED',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredGames.length,
                  itemBuilder: (context, index) {
                    final game = featuredGames[index];
                    return SizedBox(
                      width: 400,
                      child: GameCard(
                        imagePath: game.imagePath,
                        price: game.price,
                        discount: game.discount,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Special Offers Section
              const Text(
                'SPECIAL OFFERS',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: specialOffers.length,
                  itemBuilder: (context, index) {
                    final game = specialOffers[index];
                    return GameCard(
                      imagePath: game.imagePath,
                      price: game.price,
                      discount: game.discount,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'RECOMMENDED FOR YOU',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendedForYou.length,
                  itemBuilder: (context, index) {
                    final game = recommendedForYou[index];
                    return GameCard(
                      imagePath: game.imagePath,
                      price: game.price,
                      discount: game.discount,
                    );
                  },
                ),
              ),
              const SizedBox(
                  height:
                      20), // Jarak antara "RECOMMENDED FOR YOU" dan tombol navigasi

              // Bottom Navigation Buttons (Scrolling)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab = 0; // Mengubah tab yang dipilih
                      });
                      updateDisplayedGames(0);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color:
                            selectedTab == 0 ? Colors.blue : AppColors.bgColors,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'New & Trending',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab = 1; // Mengubah tab yang dipilih
                      });
                      updateDisplayedGames(1);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color:
                            selectedTab == 1 ? Colors.blue : AppColors.bgColors,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'Top Sellers',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab = 2; // Mengubah tab yang dipilih
                      });
                      updateDisplayedGames(2);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color:
                            selectedTab == 2 ? Colors.blue : AppColors.bgColors,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'Upcoming',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab = 3; // Mengubah tab yang dipilih
                      });
                      updateDisplayedGames(3);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color:
                            selectedTab == 3 ? Colors.blue : AppColors.bgColors,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'Specials',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                  height:
                      15), // Memberikan jarak antara tombol navigasi dan daftar game

              // Game List Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var game in displayedGames) // Menggunakan displayedGames
                    GameListTile(
                      imagePath: game.imagePath,
                      title: game.title,
                      genre: game.genre,
                      price: game.price,
                      discount: game.discount,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Game List Tile Widget
class GameListTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String genre;
  final String price;
  final String? discount;

  const GameListTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.genre,
    required this.price,
    this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  genre,
                  style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    if (discount != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6.0,
                          vertical: 2.0,
                        ),
                        color: Colors.green,
                        child: Text(
                          '-$discount',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    const SizedBox(width: 8),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
