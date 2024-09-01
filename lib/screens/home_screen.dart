import 'package:flutter/material.dart';
import 'package:grafos/components/form_field_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/imgs/FazendaImg.jpg'),
                ],
              ),
              const SizedBox(height: 20),
              const FormFieldApp(),
            ],
          ),
        ),
      ),
    );
  }
}
