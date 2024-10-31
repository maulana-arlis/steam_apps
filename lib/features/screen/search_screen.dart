import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int? selectedTextIndex;

  final List<String> categories = [
    'New on Steam',
    'Shooter',
    'Adventure',
    'Race',
    'Simulation',
    'Strategy',
    'Sports',
    'Souls Like'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColors,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(categories.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTextIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 18,
                          color: index == 0
                              ? (selectedTextIndex == index
                                  ? Colors.white
                                  : Colors.blue)
                              : (selectedTextIndex == index
                                  ? Colors.blue
                                  : Colors.white),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
