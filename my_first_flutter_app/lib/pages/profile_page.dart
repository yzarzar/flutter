import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text("Profile page"),
        elevation: 1,
      ),
      body: const Center(
        child: Text('Profile page'),
      ),
    );
  }
}
