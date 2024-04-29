import 'package:flutter/material.dart';

class ThemesPage extends StatelessWidget {
  const ThemesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Themes'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.sunny),
          )
        ],
      ),
      body: const Center(
        child: Text('Hola Diego'),
      ),
    );
  }
}