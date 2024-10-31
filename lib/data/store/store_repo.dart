import '../../core/constants/images.dart';

class Game {
  final String imagePath;
  final String title;
  final String genre;
  final String price;
  final String? discount;

  Game({
    required this.imagePath,
    required this.title,
    required this.genre,
    required this.price,
    this.discount,
  });
}

// Daftar game untuk setiap kategori
List<Game> featuredGames = [
  Game(
    imagePath: Images.theforest,
    title: 'The Forest',
    genre: 'Survival, Open World',
    price: '\$ 15',
  ),
  Game(
    imagePath: Images.breakpoint,
    title: 'Ghost Recon Breakpoint',
    genre: 'Shooter, Tactical',
    price: 'IN LIBRARY',
  ),
  Game(
    imagePath: Images.wildlands,
    title: 'Ghost Recon Wildlands',
    genre: 'Shooter, Tactical',
    price: 'IN LIBRARY',
  ),
];

List<Game> specialOffers = [
  Game(
    imagePath: Images.hogwarts,
    title: 'Hogwarts Legacy',
    genre: 'Magic, Fantasy',
    price: '\$ 45',
    discount: '20',
  ),
  Game(
    imagePath: Images.got,
    title: 'Ghost of Tsushima',
    genre: 'Action, Adventure',
    price: '\$ 65',
    discount: '35',
  ),
  Game(
    imagePath: Images.darksoul3,
    title: 'Dark Souls 3',
    genre: 'Souls-Like, Dark Fantasy',
    price: '\$ 75',
    discount: '10',
  ),
];

List<Game> recommendedForYou = [
  Game(
    imagePath: Images.wukong,
    title: 'Black Myth Wukong',
    genre: 'Mythology, RPG',
    price: '\$ 50',
    discount: null,
  ),
  Game(
    imagePath: Images.cyberpunk,
    title: 'Cyberpunk 2077',
    genre: 'Cyberpunk, Sci-Fi',
    price: '\$ 60',
    discount: null,
  ),
  Game(
    imagePath: Images.bo6,
    title: 'Black Ops 6',
    genre: 'Shooter, FPS',
    price: '\$ 70',
    discount: null,
  ),
];

// Daftar game untuk masing-masing tombol
List<Game> newAndTrendingGames = [
  Game(
    imagePath: Images.witcher3,
    title: 'The Witcher III',
    genre: 'RPG, Action',
    price: '\$ 45',
    discount: '10%',
  ),
  Game(
    imagePath: Images.gta5,
    title: 'Grand Theft Auto 5',
    genre: 'Action, Open World',
    price: '\$ 30',
    discount: '20%',
  ),
  Game(
    imagePath: Images.payday3,
    title: 'Pay Day 3',
    genre: 'Heist, Crime',
    price: '\$ 20',
  ),
];

List<Game> topSellersGames = [
  Game(
    imagePath: Images.f1,
    title: 'F1 2024',
    genre: 'Race, Driving',
    price: '\$ 50',
  ),
  Game(
    imagePath: Images.assetto,
    title: 'Asseto Corsa',
    genre: 'Driving, Simulation',
    price: '\$ 25',
  ),
  Game(
    imagePath: Images.motogp,
    title: 'MotoGP 2024',
    genre: 'Motorbike, Race',
    price: '\$ 30',
  ),
];

List<Game> upcomingGames = [
  Game(
    imagePath: Images.deadisland2,
    title: 'Dead Island 2',
    genre: 'Zombie, Open World',
    price: 'Pre-Order',
  ),
  Game(
    imagePath: Images.l4d2,
    title: 'Left 4 Dead 2',
    genre: 'Zombie, Survival',
    price: 'Pre-Order',
  ),
  Game(
    imagePath: Images.daysgone,
    title: 'Days Gone',
    genre: 'Survival, Horror',
    price: 'Pre-Order',
  ),
];

List<Game> specialsGames = [
  Game(
    imagePath: Images.forza,
    title: 'Forza Horizon 4',
    genre: 'Race, Driving',
    price: '',
    discount: ' IN LIBRARY',
  ),
  Game(
    imagePath: Images.helldivers,
    title: 'HellDivers 2',
    genre: 'Action, Shooter',
    price: '\$ 60',
  ),
  Game(
    imagePath: Images.godofwar,
    title: 'God of War Ragnarok',
    genre: 'Action, Adventure',
    price: '\$ 50',
    discount: '10%',
  ),
];
