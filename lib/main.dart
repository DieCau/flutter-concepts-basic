// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool tapped = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.elliptical(750, 150), right: Radius.elliptical(90, 95)),
                  color: tapped == true 
                    ? Colors.grey.shade100
                    : Colors.grey.shade300,
                  boxShadow: [ 
                    BoxShadow(
                      color: Colors.grey.shade600,
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(4, 4)
                    ),
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(-4, -4)
                    ),
                  ]
                ),
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                child: Icon(
                  Icons.apple_outlined,
                  size: 50,
                  color: tapped == true 
                    ? Colors.grey[300] 
                    : Colors.white,
                ),
              ),
              SizedBox(height: 80),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    tapped = !tapped;
                  });
                }, 
                child: Text('Presionar!'),),
            ],
          ),
        ),        
      ),
    );
  }
}