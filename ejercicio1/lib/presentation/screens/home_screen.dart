import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 1'),
      ),
      body: Center(        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Hola Flutter!'),
            SizedBox(height: 10),
            SnackBarButtom(),
            SizedBox(height: 10),
            Text('Presionar este botón')
          ],
        ),
      ),
    );
  }
}

class SnackBarButtom extends StatelessWidget {
  const SnackBarButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: (){
        const snackBar = SnackBar(
          content: Text('Presionaste un botón'),
          duration: Duration (seconds: 3),
          backgroundColor: Colors.amber,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: const Icon(Icons.account_balance_outlined));
  }
}
