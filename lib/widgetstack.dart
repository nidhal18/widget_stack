import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack With Images'),
      ),
      body: const Center(
        child: StackWidgetExample(),
      ),
    );
  }
}

class StackWidgetExample extends StatelessWidget {
  const StackWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: Stack(
        children: [
          // First Image (background image)
          Positioned.fill(
            child: Image.network(
              'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Second Image (centered and smaller image)
          Align(
            alignment: Alignment.center,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
              width: 150,
              height: 150,
            ),
          ),
          // Third Image (postioned at the top right corner)
        ],
      ),
    );
  }
}
