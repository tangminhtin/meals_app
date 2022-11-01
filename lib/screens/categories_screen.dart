import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/screens/category_meals_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void selectedCategory(
    BuildContext context,
    String id,
    String name,
  ) {
    Navigator.of(context).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'name': name,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 150,
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemCount: DUMMY_CATEGORIES.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => selectedCategory(context, DUMMY_CATEGORIES[index].id,
              DUMMY_CATEGORIES[index].name),
          child: Card(
            key: ValueKey(DUMMY_CATEGORIES[index].id),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    DUMMY_CATEGORIES[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 10,
                  child: Container(
                    width: 150,
                    color: Colors.orange,
                    child: Text(
                      textAlign: TextAlign.center,
                      DUMMY_CATEGORIES[index].name,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
