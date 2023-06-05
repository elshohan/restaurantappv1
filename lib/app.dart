import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'home_screen.dart';
import 'search_screen.dart';
import 'kartshop_screen.dart';
import 'bookmark_screen.dart';
import 'motorcycle_screen.dart';
import 'bottom_nagivation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const KartShopScreen(),
    const BookmarkScreen(),
    const MotorcycleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
