import 'package:ejercicio3/presentation/screens/details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 3 - HomeScreen'),
        leading: const Icon(Icons.house_outlined),
      ),
      body: const Center(
        child: Card(
          shadowColor: Colors.black,
          color: Colors.black12,
          elevation: 15,
          child: Text('esta es la pantalla de inicio'))
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
        })
    );
  }
}