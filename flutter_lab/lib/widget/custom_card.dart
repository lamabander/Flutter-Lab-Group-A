import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String author;
  final double price;
  final String imageUrl;
  final VoidCallback? onTap;

  const CustomCard({
    super.key,
    required this.title,
    required this.author,
    required this.price,
    required this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imageUrl, height: 100, fit: BoxFit.cover),
            const SizedBox(height: 8),
            Text(title),
            Text(author, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('\$${price.toStringAsFixed(2)}'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
