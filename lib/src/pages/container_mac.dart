import 'package:flutter/material.dart';

class ContainerMac extends StatefulWidget {
  const ContainerMac({super.key});

  @override
  State<ContainerMac> createState() => _ContainerMacState();
}

class _ContainerMacState extends State<ContainerMac> {

  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                        left: Radius.elliptical(750, 150), right: Radius.elliptical(90, 95)),
                    color: tapped == true ? Colors.grey.shade100 : Colors.grey.shade300,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: const Offset(4, 4)),
                      const BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(-4, -4)),
                    ]),
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                child: Icon(
                  Icons.apple_outlined,
                  
                  size: 50,
                  color: tapped == true ? Colors.grey[300] : Colors.white,
                ),
              ),
              const SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    tapped = !tapped;
                  });
                },
                child: const Text('Presionar!'),
              ),
            ],
          ),
        ),
      );
    }
}

