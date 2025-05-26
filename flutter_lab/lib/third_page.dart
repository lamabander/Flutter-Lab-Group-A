import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {final String title;
  final String imageUrl;
  final String description;

  const ThirdPage({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description,
  });

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imageUrl, height: 250, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
