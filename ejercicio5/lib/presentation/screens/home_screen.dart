import 'package:ejercicio5/presentation/screens/image_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: colors.secondary,
      //   title: const Text('Imagenes de PICSUM'),),
      body: const ImageListView()
    );
  }
}

class ImageListView extends StatelessWidget {
  const ImageListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      removeTop: true,
      child: ListView.builder(
        //itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              final imageUrl ='https://picsum.photos/id/$index/500/300';
              //Navigator.push(context, MaterialPageRoute(builder: (context)=> ImageScreen(imageUrl: imageUrl)));
              context.pushNamed(ImageScreen.name, queryParameters: {'imageUrl': imageUrl });             
            },
            child: Stack(
              children: [Image.network(
                'https://picsum.photos/id/$index/500/300',
                height: 300,
                fit: BoxFit.cover,
              
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)))
              ]
            ),
          );
        
      },),
    );
  }
}