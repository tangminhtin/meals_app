import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String item;
  final VoidCallback onTap;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.grey.shade700,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              item,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
