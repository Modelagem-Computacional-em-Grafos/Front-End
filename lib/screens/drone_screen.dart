import 'package:flutter/material.dart';
import 'package:grafos/components/drone_screen/drone_name_png.dart';
import 'package:grafos/components/drone_screen/info_drone.dart';
import 'package:grafos/utils/app_routes.dart';

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
      body: Stack(
        children: [
          const SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                DroneNamePng(),
                InfoDrone(),
                SizedBox(height: 250),
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 20,
            child: Center(
              child: FloatingActionButton(
                backgroundColor: Colors.blueAccent,
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.FARM_GRAPH);
                },
                child: const Text(
                  'Mapa',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
