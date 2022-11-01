import 'package:flutter/material.dart';

class CategoryMealsItem extends StatelessWidget {
  final IconData icon;
  final String item;

  const CategoryMealsItem({
    super.key,
    required this.icon,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 35,
        ),
        const SizedBox(
          width: 5,
        ),
        FittedBox(
          child: Text(
            item,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
