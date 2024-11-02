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
    description:
        'Become a Ghost, fighting against a rogue spec ops faction called the Wolves, in the latest Tom Clancys Ghost Recon®!',
    systemRequirements: [
      StoreGame.breakpoint_min,
      StoreGame.breakpoint_rec,
    ],
    mediaImages: [
      MediaGame.breakpoint1,
      MediaGame.breakpoint2,
      MediaGame.breakpoint3,
      MediaGame.breakpoint4,
      MediaGame.breakpoint5,
    ],
  ),
  Game(
    imagePath: Images.wildlands,
    title: 'Ghost Recon Wildlands',
    genre: 'Shooter, Tactical',
    price: 'IN LIBRARY',
    description:
        'Create a team with up to 3 friends in Tom Clancy’s Ghost Recon® Wildlands and enjoy the ultimate military shooter experience set in a massive, dangerous, and responsive open world.',
    systemRequirements: [
      StoreGame.wildlands_min,
      StoreGame.wildlands_rec,
    ],
    mediaImages: [
      MediaGame.wildlands1,
      MediaGame.wildlands2,
      MediaGame.wildlands3,
      MediaGame.wildlands4,
      MediaGame.wildlands5,
    ],
  ),
];

List<Game> specialOffers = [
  Game(
    imagePath: Images.hogwarts,
    title: 'Hogwarts Legacy',
    genre: 'Magic, Fantasy',
    price: '\$ 45',
    discount: '20',
    description:
        'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world. ',
    systemRequirements: [
      StoreGame.hogwarts_min,
      StoreGame.hogwarts_rec,
    ],
    mediaImages: [
      MediaGame.hogwarts1,
      MediaGame.hogwarts2,
      MediaGame.hogwarts3,
      MediaGame.hogwarts4,
      MediaGame.hogwarts5,
    ],
  ),
  Game(
    imagePath: Images.got,
    title: 'Ghost of Tsushima',
    genre: 'Action, Adventure',
    price: '\$ 65',
    discount: '35',
    description:
        'A storm is coming. Venture into the complete Ghost of Tsushima DIRECTOR’S CUT on PC; forge your own path through this open-world action adventure and uncover its hidden wonders. Brought to you by Sucker Punch Productions, Nixxes Software and PlayStation Studios. ',
    systemRequirements: [
      StoreGame.got_min,
      StoreGame.got_rec,
    ],
    mediaImages: [
      MediaGame.got1,
      MediaGame.got2,
      MediaGame.got3,
      MediaGame.got4,
      MediaGame.got5,
    ],
  ),
  Game(
    imagePath: Images.darksoul3,
    title: 'Dark Souls 3',
    genre: 'Souls-Like, Dark Fantasy',
    price: '\$ 35',
    discount: '20',
    description:
        'Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness! ',
    systemRequirements: [
      StoreGame.ds_min,
      StoreGame.ds_rec,
    ],
    mediaImages: [
      MediaGame.ds1,
      MediaGame.ds2,
      MediaGame.ds3,
      MediaGame.ds4,
      MediaGame.ds5,
    ],
  ),
];

List<Game> recommendedForYou = [
  Game(
    imagePath: Images.wukong,
    title: 'Black Myth Wukong',
    genre: 'Mythology, RPG',
    price: '\$ 50',
    discount: null,
    description:
        'Black Myth: Wukong is an action RPG rooted in Chinese mythology. You shall set out as the Destined One to venture into the challenges and marvels ahead, to uncover the obscured truth beneath the veil of a glorious legend from the past. ',
    systemRequirements: [
      StoreGame.wukong_min,
      StoreGame.wukong_rec,
    ],
    mediaImages: [
      MediaGame.wukong1,
      MediaGame.wukong2,
      MediaGame.wukong3,
      MediaGame.wukong4,
      MediaGame.wukong5,
    ],
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
