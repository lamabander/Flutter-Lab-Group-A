import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String author;
  final double price;
  final String imageUrl;
  final VoidCallback? onTap; // أضفنا onTap

  const CustomCard({
    super.key,
    required this.title,
    required this.author,
    required this.price,
    required this.imageUrl,
    this.onTap, // أضفنا هنا
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // لما نضغط الكرت
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imageUrl, height: 100, fit: BoxFit.cover), // عدلنا هنا asset
            const SizedBox(height: 8),
            Text(title),
            Text(author, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('\$${price.toStringAsFixed(2)}'),
                IconButton(
                  onPressed: () {
                    // وظيفة زر الإضافة للعربة
                  },
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
