import 'package:ejercicio3/presentation/screens/details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 3 - HomeScreen'),
        leading: const Icon(Icons.house_outlined),
      ),
      
      
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            TextField(
              controller: textEditingController,
              decoration: const InputDecoration(
                labelText: 'Ingrese un texto'
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(text: textEditingController.text)));},
              child: const Text('Enviar'),
            )

          ],
        )
      ),
     
     
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen(text: '',)));
        })
    );
  }
}