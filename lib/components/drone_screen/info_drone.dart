import 'package:flutter/material.dart';

class InfoDrone extends StatelessWidget {
  const InfoDrone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 18, 18, 18),
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 250,
        width: double.infinity,
        child: const Center(
          child: Text(
            'Informações',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
