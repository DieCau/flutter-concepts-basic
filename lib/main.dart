import 'package:flutter/material.dart';
import './src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routes App',
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
        '/otra':(context) => const OtraPage(),
        '/custom':(context) => const CustomPage(),
        '/api':(context) => const ApiPage(),
      },
    );
  }
}