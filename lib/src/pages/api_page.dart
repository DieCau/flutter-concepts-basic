// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../models/pokemon.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {

  Pokemon? pokemon;
  int pokemonId = 0;


  @override
  void initState() {
    super.initState();
    getPokemon();
  }

  Future<void> getPokemon() async{
    
    pokemonId++;
    final response = await Dio().get("https://pokeapi.co/api/v2/pokemon/$pokemonId");
    pokemon = Pokemon.fromJson(response.data);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon ID: $pokemonId', textAlign: TextAlign.center,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pokemon?.name ?? 'No data'),
            if(pokemon != null)
            ...[
              Image.network(pokemon!.sprites.frontDefault),
              Image.network(pokemon!.sprites.backDefault),
            ]
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getPokemon, 
        child: const Icon(Icons.navigate_next),        
      ),
    );
  }
}
