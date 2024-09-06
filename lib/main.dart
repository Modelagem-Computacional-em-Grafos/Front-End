import 'package:flutter/material.dart';
import 'package:grafos/screens/drone_screen.dart';
import 'package:grafos/screens/farm_graph_screen.dart';
import 'package:grafos/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fazendinha Feliz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.HOME: (context) => const DroneScreen(),
        AppRoutes.FARM_GRAPH: (context) => const FarmGraphScreen(),
      },
    );
  }
}
