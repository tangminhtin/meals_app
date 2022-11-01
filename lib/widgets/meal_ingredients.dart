import 'package:flutter/material.dart';

class MealIngredients extends StatelessWidget {
  final List<String> ingredients;

  const MealIngredients({
    super.key,
    required this.ingredients,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      margin: const EdgeInsets.all(35),
      padding: const EdgeInsets.all(15),
      height: 250,
      child: ListView.builder(
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              vertical: 2,
            ),
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              color: Colors.red.shade50,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                child: Text(
                  ingredients[index],
                  style: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
