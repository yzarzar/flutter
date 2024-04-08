import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text('Settings page'),
        elevation: 1,
      ),
      body: const Center(
        child: Text('Settings page'),
      ),
    );
  }
}
