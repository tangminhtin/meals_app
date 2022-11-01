import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_ingredients.dart';
import 'package:meals_app/widgets/meal_steps.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal_detail';
  final Function toggleFavorite;
  final Function isMealFavorite;

  const MealDetailScreen({
    super.key,
    required this.toggleFavorite,
    required this.isMealFavorite,
  });

  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context)?.settings.arguments as String;
    final Meal meal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.name),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => toggleFavorite(mealId),
        child: Icon(
          isMealFavorite(mealId) ? Icons.favorite : Icons.favorite_outline,
          color: Colors.red,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              meal.image,
              fit: BoxFit.cover,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Ingredients',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                fontStyle: FontStyle.italic,
              ),
            ),
            MealIngredients(
              ingredients: meal.ingredients,
            ),
            const Text(
              'Steps',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                fontStyle: FontStyle.italic,
              ),
            ),
            MealSteps(
              steps: meal.steps,
            ),
          ],
        ),
      ),
    );
  }
}
