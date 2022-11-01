import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/filter_screen.dart';
import 'package:meals_app/widgets/drawer_item.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.yellow.shade100,
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 20),
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Text(
              'Cooking Up!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DrawerItem(
                  icon: Icons.restaurant_menu,
                  item: 'Meals',
                  onTap: () => Navigator.of(context).pushReplacementNamed('/'),
                ),
                DrawerItem(
                  icon: Icons.settings,
                  item: 'Filters',
                  onTap: () => Navigator.of(context)
                      .pushReplacementNamed(FilterScreen.routeName),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
