import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Home Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/otra');
              }, 
              child: const Text('Ir a Otra Pagina'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/custom');
              }, 
              child: const Text('Ir a Custom Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/api');
              }, 
              child: const Text('Consumir una API'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/theme');
              }, 
              child: const Text('Ir a Themes'),
            ),
          ],
        ),
      ),
    );
  }
}