import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  const CustomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Page'),),
      body: const Center(
        child: Text('Estas en Custom Page'),
      ),
    );
  }
}