import 'package:flutter/material.dart';

class DroneNamePng extends StatelessWidget {
  const DroneNamePng({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 18, 18, 18),
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Image.asset('assets/imgs/dji-t30-drone-nobackground.png'),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DJI Agras T30',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SUSE',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Text(
                  'Um novo conceito digital para a agricultura',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
