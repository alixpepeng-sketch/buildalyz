import 'package:flutter/material.dart';

class ChatDetailScreen extends StatelessWidget {
  const ChatDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          children: [
            CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.person, color: Colors.black)),
            SizedBox(width: 8),
            Text('Alyz User', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(child: ListView()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  IconButton(icon: const Icon(Icons.attach_file, color: Colors.white), onPressed: () {}),
                  const Expanded(child: TextField(style: TextStyle(color: Colors.white), decoration: InputDecoration(hintText: 'Pesan...', border: InputBorder.none))),
                  IconButton(icon: const Icon(Icons.mic, color: Colors.white), onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
