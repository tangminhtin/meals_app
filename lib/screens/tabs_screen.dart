import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorites_screen.dart';
import 'package:meals_app/widgets/bottom_nav.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const TabsScreen({
    super.key,
    required this.favoriteMeals,
  });

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPage = 0;
  late List<Map<String, Object>> _pages;

  @override
  void initState() {
    _pages = [
      {
        'title': 'Categories',
        'page': const CategoriesScreen(),
      },
      {
        'title': 'Favorites',
        'page': FavoritesScreen(
          favoriteMeals: widget.favoriteMeals,
        ),
      },
    ];
    super.initState();
  }

  void _changePage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectedPage]['title'].toString(),
        ),
      ),
      body: _pages[_selectedPage]['page'] as Widget,
      drawer: const MainDrawer(),
      bottomNavigationBar: BottomNav(
        selectedPage: _selectedPage,
        changePage: _changePage,
      ),
    );
  }
}
