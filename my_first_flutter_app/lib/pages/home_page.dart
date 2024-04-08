import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: const Text("Home page"),
        elevation: 1,
      ),
      body: const Center(
        child: Text('Aung Naing page'),
      ),
    );
  }
}
