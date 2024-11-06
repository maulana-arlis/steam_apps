import 'package:flutter/material.dart';
import 'package:steam_apps/data/cart_data.dart';
import '../screen/home_screen.dart';
import '../screen/profile_screen.dart';
import '../screen/search_screen.dart';
import '../screen/more_screen.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';
import '../widgets/checkout.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key});

  @override
  _MainMenuScreenState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  int _currentIndex = 0;
  final double _walletBalance = 92.50;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "\$${_walletBalance.toStringAsFixed(2)}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Image.asset(
                  Images.logo,
                  height: 50,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  showPaymentBottomSheet(
                    context,
                    cartData.items, // Pass wallet balance here
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.bgColors,
        selectedItemColor: AppColors.selected,
        unselectedItemColor: AppColors.unSelected,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
