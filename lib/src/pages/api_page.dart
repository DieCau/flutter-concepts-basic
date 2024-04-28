// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:concepts_basic/src/models/gif_model.dart';
// Importar Package 'http' y que encapsule todo el contenido en 'http'
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  /* Uso Future ya que debe esperar hasta que resuelva una petición
     _listadoGifs es la variable que contenga todo el Future
     Future devolverá un List del tipo "Gif" que esta en el gif_model.dart
  */
  late Future<List<Gif>> _listadoGifs;

  // En url asigno la dirección Uri.https
  final url = Uri.https(
      'https://api.giphy.com/v1/gifs/trending?api_key=OXWJYANIxdEOxqGXk1lV9D87xvqWf8zY&limit=5&offset=0&rating=g&bundle=messaging_non_clips');

  // Creo una función asíncrona _getGifs con async y await
  Future<List<Gif>> _getGifs() async {
    
    // response recibira todo el contenido de mi url pero debe ir con await si o si
    final response = await http.get(url);
    
    List<Gif> gifs = [];


    // Verifico si el response es igual al estado del codigo 200 == 'Todo OK'
    if (response.statusCode == 200) {
      String decodedResponse = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(decodedResponse);
      return gifs;

    } else {
      // Si algo sale mal capturo el error
      throw Exception('Falló la conexión!');      
    }    
  }

  // Llamo a la funcion _getGifs() dentro de un initState, el cual es el primero que se ejecuta
  @override
  void initState() {
    super.initState();
    _getGifs();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumir una API'),
      ),
      body: const Center(
        child: Text('Hola Diego'),
      ),
    );
  }
}
