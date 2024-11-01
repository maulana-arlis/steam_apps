import '../../core/constants/images.dart';
import '../../core/constants/strings.dart';

class Game {
  final String imagePath;
  final String title;
  final String genre;
  final String price;
  final String? discount;
  final String description; // Menambahkan deskripsi game
  final List<String> systemRequirements; // Menambahkan persyaratan sistem
  final List<String> mediaImages;

  Game({
    required this.imagePath,
    required this.title,
    required this.genre,
    required this.price,
    this.discount,
    required this.description,
    required this.systemRequirements,
    required this.mediaImages,
  });
}

// Daftar game untuk setiap kategori
List<Game> featuredGames = [
  Game(
    imagePath: Images.theforest,
    title: 'The Forest',
    genre: 'Survival, Open World',
    price: '\$ 15',
    description:
        'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator. ',
    systemRequirements: [
      StoreGame.theforest_min,
      StoreGame.theforest_rec,
    ],
    mediaImages: [
      MediaGame.theforest1,
      MediaGame.theforest2,
      MediaGame.theforest3,
      MediaGame.theforest4,
      MediaGame.theforest5,
    ],
  ),
  Game(
    imagePath: Images.breakpoint,
    title: 'Ghost Recon Breakpoint',
    genre: 'Shooter, Tactical',
    price: 'IN LIBRARY',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.wildlands,
    title: 'Ghost Recon Wildlands',
    genre: 'Shooter, Tactical',
    price: 'IN LIBRARY',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
];

List<Game> specialOffers = [
  Game(
    imagePath: Images.hogwarts,
    title: 'Hogwarts Legacy',
    genre: 'Magic, Fantasy',
    price: '\$ 45',
    discount: '20',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.got,
    title: 'Ghost of Tsushima',
    genre: 'Action, Adventure',
    price: '\$ 65',
    discount: '35',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.darksoul3,
    title: 'Dark Souls 3',
    genre: 'Souls-Like, Dark Fantasy',
    price: '\$ 75',
    discount: '10',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
];

List<Game> recommendedForYou = [
  Game(
    imagePath: Images.wukong,
    title: 'Black Myth Wukong',
    genre: 'Mythology, RPG',
    price: '\$ 50',
    discount: null,
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.cyberpunk,
    title: 'Cyberpunk 2077',
    genre: 'Cyberpunk, Sci-Fi',
    price: '\$ 60',
    discount: null,
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.bo6,
    title: 'Black Ops 6',
    genre: 'Shooter, FPS',
    price: '\$ 70',
    discount: null,
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
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
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.gta5,
    title: 'Grand Theft Auto 5',
    genre: 'Action, Open World',
    price: '\$ 30',
    discount: '20%',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.payday3,
    title: 'Pay Day 3',
    genre: 'Heist, Crime',
    price: '\$ 20',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
];

List<Game> topSellersGames = [
  Game(
    imagePath: Images.f1,
    title: 'F1 2024',
    genre: 'Race, Driving',
    price: '\$ 50',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.assetto,
    title: 'Asseto Corsa',
    genre: 'Driving, Simulation',
    price: '\$ 25',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.motogp,
    title: 'MotoGP 2024',
    genre: 'Motorbike, Race',
    price: '\$ 30',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
];

List<Game> upcomingGames = [
  Game(
    imagePath: Images.deadisland2,
    title: 'Dead Island 2',
    genre: 'Zombie, Open World',
    price: 'Pre-Order',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.l4d2,
    title: 'Left 4 Dead 2',
    genre: 'Zombie, Survival',
    price: 'Pre-Order',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.daysgone,
    title: 'Days Gone',
    genre: 'Survival, Horror',
    price: 'Pre-Order',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
];

List<Game> specialsGames = [
  Game(
    imagePath: Images.forza,
    title: 'Forza Horizon 4',
    genre: 'Race, Driving',
    price: '',
    discount: ' IN LIBRARY',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.helldivers,
    title: 'HellDivers 2',
    genre: 'Action, Shooter',
    price: '\$ 60',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
  Game(
    imagePath: Images.godofwar,
    title: 'God of War Ragnarok',
    genre: 'Action, Adventure',
    price: '\$ 50',
    discount: '10%',
    description: '',
    systemRequirements: [
      'Minimum: ',
      'Recommended: ',
    ],
    mediaImages: [],
  ),
];
