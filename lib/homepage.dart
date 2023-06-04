import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Container(
              alignment: Alignment.center,
              child: const Text(
                  'All the Gaalis are added by users only the developer has no consent over it'),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Add a new Gaali',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: const Text('add gaali'),),
          ],
        ),
      ),
    );
  }
}
