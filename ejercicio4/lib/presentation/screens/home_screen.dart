import 'package:flutter/material.dart';
import 'dart:math';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  final randomImageIndex = Random();
  late int imageIndex;

  @override
  void initState() {
    imageIndex = randomImageIndex.nextInt(7)+1;
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.primary,
        title: const Text('HomeScreen with Image'),
        leading: const Icon(Icons.image_outlined),
      ),
      body: CustomImage(imageAsset: 'assets/images/sara$imageIndex.png'),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.next_plan_outlined),
        onPressed: (){
          setState(() {
            imageIndex = randomImageIndex.nextInt(7)+1;
            
          });
        },
      ),
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