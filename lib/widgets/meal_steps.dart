import 'package:flutter/material.dart';

class MealSteps extends StatelessWidget {
  final List<String> steps;

  const MealSteps({
    super.key,
    required this.steps,
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
      height: 450,
      child: ListView.separated(
        itemCount: steps.length,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 2,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              vertical: 2,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    minRadius: 15,
                    child: Text(
                      '#${index + 1}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      steps[index],
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
