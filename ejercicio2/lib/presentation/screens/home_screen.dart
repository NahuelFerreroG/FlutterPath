import 'package:ejercicio2/datasource/local_datasource.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final iconsList = icons;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 2'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: iconsList.length,
        itemBuilder: (BuildContext context, int index) {
          final icon = iconsList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(icon)
                  ),
            
                  const SizedBox(height: 10),

                  Text('Unicode name: ${icon.toString()}')
                                   
            
                ],
              ),
            ),
          );
        },

      )
    );
  }
} 