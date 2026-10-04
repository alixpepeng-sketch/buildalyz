import 'package:flutter/material.dart';

void main() => runApp(const AlyzApp());

class AlyzApp extends StatelessWidget {
  const AlyzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Placeholder. Upload ZIP project Flutter lewat web ALYZZ AI.'),
        ),
      ),
    );
  }
}
