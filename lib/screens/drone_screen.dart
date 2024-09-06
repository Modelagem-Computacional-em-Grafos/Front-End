import 'package:flutter/material.dart';
import 'package:grafos/components/drone_screen/drone_name_png.dart';

class DroneScreen extends StatelessWidget {
  const DroneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.black;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Padding(
          padding: const EdgeInsets.all(135.0),
          child: Image.asset('assets/imgs/dji-logo.png'),
        ),
      ),
      backgroundColor: backgroundColor,
      body: const Column(
        children: [
          SizedBox(height: 20),
          DroneNamePng(),
        ],
      ),
    );
  }
}
