// search_repo.dart
import 'package:steam_apps/data/store/store_repo.dart';
import '../../core/constants/images.dart';
import '../../core/constants/strings.dart'; // Pastikan model Game diimpor

class SearchRepo {
  static final List<Game> allGames = [
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
      imagePath: Images.darksoul3,
      description:
          'Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness! ',
      mediaImages: [
        MediaGame.ds1,
        MediaGame.ds2,
        MediaGame.ds3,
        MediaGame.ds4,
        MediaGame.ds5,
      ],
      systemRequirements: [
        StoreGame.ds_min,
        StoreGame.ds_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'Black Wukong',
      imagePath: Images.wukong,
      description:
          'Black Myth: Wukong is an action RPG rooted in Chinese mythology. You shall set out as the Destined One to venture into the challenges and marvels ahead, to uncover the obscured truth beneath the veil of a glorious legend from the past. ',
      mediaImages: [
        MediaGame.wukong1,
        MediaGame.wukong2,
        MediaGame.wukong3,
        MediaGame.wukong4,
        MediaGame.wukong5,
      ],
      systemRequirements: [
        StoreGame.wukong_min,
        StoreGame.wukong_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'CyberPunk',
      imagePath: Images.cyberpunk,
      description:
          'Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification. ',
      mediaImages: [
        MediaGame.cyberpunk1,
        MediaGame.cyberpunk2,
        MediaGame.cyberpunk3,
        MediaGame.cyberpunk4,
        MediaGame.cyberpunk5,
      ],
      systemRequirements: [
        StoreGame.cyberpunk_min,
        StoreGame.cyberpunk_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'Black Ops 6',
      imagePath: Images.bo6,
      description:
          'Call of Duty®: Black Ops 6 is signature Black Ops across a cinematic single-player Campaign, a best-in-class Multiplayer experience and with the epic return of Round-Based Zombies.',
      mediaImages: [
        MediaGame.bo6_1,
        MediaGame.bo6_2,
        MediaGame.bo6_3,
        MediaGame.bo6_4,
        MediaGame.bo6_5,
      ],
      systemRequirements: [
        StoreGame.bo6_min,
        StoreGame.bo6_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'Witcher III',
      imagePath: Images.witcher3,
      description:
          'You are Geralt of Rivia, mercenary monster slayer. Before you stands a war-torn, monster-infested continent you can explore at will. Your current contract? Tracking down Ciri — the Child of Prophecy, a living weapon that can alter the shape of the world. ',
      mediaImages: [
        MediaGame.witcher3_1,
        MediaGame.witcher3_2,
        MediaGame.witcher3_3,
        MediaGame.witcher3_4,
        MediaGame.witcher3_5,
      ],
      systemRequirements: [
        StoreGame.witcher3_min,
        StoreGame.witcher3_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'GTA 5',
      imagePath: Images.gta5,
      description:
          'Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second. ',
      mediaImages: [
        MediaGame.gta5_1,
        MediaGame.gta5_2,
        MediaGame.gta5_3,
        MediaGame.gta5_4,
        MediaGame.gta5_5,
      ],
      systemRequirements: [
        StoreGame.gta5_min,
        StoreGame.gta5_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'PayDay 3',
      imagePath: Images.payday3,
      description:
          'PAYDAY 3 is the much anticipated sequel to one of the most popular co-op shooters ever. Since its release, PAYDAY-players have been reveling in the thrill of a perfectly planned and executed heist. That’s what makes PAYDAY a high-octane, co-op FPS experience without equal. ',
      mediaImages: [
        MediaGame.payday3_1,
        MediaGame.payday3_2,
        MediaGame.payday3_3,
        MediaGame.payday3_4,
        MediaGame.payday3_5,
      ],
      systemRequirements: [
        StoreGame.payday3_min,
        StoreGame.payday3_rec,
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
      title: 'F1 2024',
      imagePath: Images.f1,
      description:
          'Join the grid and Be One of the 20. Drive like the greatest in EA SPORTS™ F1® 24, the official video game of the 2024 FIA Formula One World Championship™. ',
      mediaImages: [
        MediaGame.f1_1,
        MediaGame.f1_2,
        MediaGame.f1_3,
        MediaGame.f1_4,
        MediaGame.f1_5,
      ],
      systemRequirements: [
        StoreGame.f1_min,
        StoreGame.f1_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'Assetto Corsa',
      imagePath: Images.assetto,
      description:
          'Assetto Corsa v1.16 introduces the new "Laguna Seca" laser-scanned track, 7 new cars among which the eagerly awaited Alfa Romeo Giulia Quadrifoglio! Check the changelog for further info! ',
      mediaImages: [
        MediaGame.ac_1,
        MediaGame.ac_2,
        MediaGame.ac_3,
        MediaGame.ac_4,
        MediaGame.ac_5,
      ],
      systemRequirements: [
        StoreGame.ac_min,
        StoreGame.ac_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'MotoGP 2024',
      imagePath: Images.motogp,
      description:
          'Rev up your engines, MotoGP™24 is back! Dive into the heart-pounding action of the 2024 season and immerse yourself in the thrills of unexplored landscapes, all thanks to the revolutionary Riders market! ',
      mediaImages: [
        MediaGame.motogp1,
        MediaGame.motogp2,
        MediaGame.motogp3,
        MediaGame.motogp4,
        MediaGame.motogp5,
      ],
      systemRequirements: [
        StoreGame.motogp_min,
        StoreGame.motogp_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'Dead Islands 2',
      imagePath: Images.deadisland2,
      description:
          'A deadly virus is spreading across Los Angeles, turning its inhabitants into zombies. Bitten, infected, but more than just immune, uncover the truth behind the outbreak and discover who - or what - you are. Survive, evolve and become the ultimate Zombie Slayer. ',
      mediaImages: [
        MediaGame.deadisland1,
        MediaGame.deadisland2,
        MediaGame.deadisland3,
        MediaGame.deadisland4,
        MediaGame.deadisland5,
      ],
      systemRequirements: [
        StoreGame.deadisland2_min,
        StoreGame.deadisland2_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'Left 4 Dead 2',
      imagePath: Images.l4d2,
      description:
          'Set in the zombie apocalypse, Left 4 Dead 2 (L4D2) is the highly anticipated sequel to the award-winning Left 4 Dead, the #1 co-op game of 2008. This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to...',
      mediaImages: [
        MediaGame.l4d2_1,
        MediaGame.l4d2_2,
        MediaGame.l4d2_3,
        MediaGame.l4d2_4,
        MediaGame.l4d2_5,
      ],
      systemRequirements: [
        StoreGame.l4d2_min,
        StoreGame.l4d2_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'Days Gone',
      imagePath: Images.daysgone,
      description:
          'Ride and fight into a deadly, post pandemic America. Play as Deacon St. John, a drifter and bounty hunter who rides the broken road, fighting to survive while searching for a reason to live in this open-world action-adventure game. ',
      mediaImages: [
        MediaGame.daysgone1,
        MediaGame.daysgone2,
        MediaGame.daysgone3,
        MediaGame.daysgone4,
        MediaGame.daysgone5,
      ],
      systemRequirements: [
        StoreGame.daysgone_min,
        StoreGame.daysgone_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'Forza Horizon 4',
      imagePath: Images.forza,
      description:
          'Dynamic seasons change everything at the world’s greatest automotive festival. Go it alone or team up with others to explore beautiful and historic Britain in a shared open world. ',
      mediaImages: [
        MediaGame.forza1,
        MediaGame.forza2,
        MediaGame.forza3,
        MediaGame.forza4,
        MediaGame.forza5,
      ],
      systemRequirements: [
        StoreGame.forza4_min,
        StoreGame.forza4_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'HellDivers 2',
      imagePath: Images.helldivers,
      description:
          'Dynamic seasons change everything at the world’s greatest automotive festival. Go it alone or team up with others to explore beautiful and historic Britain in a shared open world. ',
      mediaImages: [
        MediaGame.helldivers1,
        MediaGame.helldivers2,
        MediaGame.helldivers3,
        MediaGame.helldivers4,
        MediaGame.helldivers5,
      ],
      systemRequirements: [
        StoreGame.helldivers_min,
        StoreGame.helldivers_rec,
      ],
      genre: '',
      price: '',
    ),
    Game(
      title: 'GOW Ragnarok',
      imagePath: Images.godofwar,
      description:
          'Kratos and Atreus embark on a mythic journey for answers before Ragnarök arrives – now on PC. ',
      mediaImages: [
        MediaGame.gow1,
        MediaGame.gow2,
        MediaGame.gow3,
        MediaGame.gow4,
        MediaGame.gow5,
      ],
      systemRequirements: [
        StoreGame.gow_min,
        StoreGame.gow_rec,
      ],
      genre: '',
      price: '',
    ),
  ];
  // Fungsi untuk mengembalikan daftar semua game
  static List<Game> getAllGames() {
    return allGames;
  }
}
