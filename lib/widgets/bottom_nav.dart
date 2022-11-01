import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int selectedPage;
  final Function changePage;

  const BottomNav({
    super.key,
    required this.selectedPage,
    required this.changePage,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => changePage(index),
      backgroundColor: Colors.yellow,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.red,
      selectedFontSize: 16,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        letterSpacing: 2,
      ),
      selectedIconTheme: const IconThemeData(
        size: 30,
      ),
      elevation: 10,
      currentIndex: selectedPage,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.category,
          ),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
          ),
          label: 'Favorites',
        ),
      ],
    );
  }
}
