import 'package:flutter/material.dart';

class AlignTest extends StatelessWidget {
  const AlignTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 5, 
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Align(
              widthFactor: 0.4,
              child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/face$index.jpg'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}