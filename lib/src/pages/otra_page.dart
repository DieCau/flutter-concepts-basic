// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OtraPage extends StatelessWidget {
  const OtraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Otra Page'),
      ),
      body: Center(
        child: Text('Estas en Otra Page'),
      ),
    );
  }
}