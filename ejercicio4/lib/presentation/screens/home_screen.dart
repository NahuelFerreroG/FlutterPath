import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.primary,
        title: const Text('HomeScreen with Image'),
        leading: const Icon(Icons.image_outlined),
      ),
      body: const CustomImage(imageAsset: 'assets/images/sara.png')
    );
  }
}

class CustomImage extends StatelessWidget {

  final String imageAsset;

  const CustomImage({
    super.key, 
    required this.imageAsset
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(imageAsset)),
        ),
      ));
  }
}