import 'package:flutter/material.dart';

import 'box_circle_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  void _gotoPage(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Animations"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _gotoPage(
                  context,
                  const BoxCircleScreen(),
                );
              },
              child: const Text("Implicit Animations"),
            ),
          ],
        ),
      ),
    );
  }
}
