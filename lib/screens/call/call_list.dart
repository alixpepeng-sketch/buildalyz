import 'package:flutter/material.dart';

class CallListScreen extends StatelessWidget {
  const CallListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Panggilan'), backgroundColor: Colors.black),
      body: const Center(child: Text('Riwayat Panggilan', style: TextStyle(color: Colors.white))),
    );
  }
}
