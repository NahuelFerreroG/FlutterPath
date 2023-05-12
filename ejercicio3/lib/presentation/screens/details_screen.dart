import 'package:ejercicio3/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});



void openDetails(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, 
    builder: (context) => AlertDialog(
      title: const Text('Details'),
      content: const Text('Id deserunt ad cupidatat in laborum veniam fugiat culpa consequat laboris aliquip.'),
      actions: [
        ElevatedButton(
          child: const Text('Salir'),
          onPressed: () => Navigator.pop(context)         
        )
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 3 - Details Screen'),
        leading: const Icon(Icons.add_box_sharp),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));

        },
        child: const Icon(Icons.arrow_back)),
      body: Center(
        child: FilledButton(
          child: const Text('Mostrar detalles'),
          onPressed: () => openDetails(context)
        ),
      ),
    );
  }
}