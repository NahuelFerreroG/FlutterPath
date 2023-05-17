import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  static const String name = 'image_screen';

  final String imageUrl;


  const ImageScreen({super.key, required this.imageUrl});
  


  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl);
  }
}