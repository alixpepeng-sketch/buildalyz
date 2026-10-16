import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil'), backgroundColor: Colors.black),
      body: const Center(child: Text('Profil Alyz WhatsApp', style: TextStyle(color: Colors.white))),
    );
  }
}
