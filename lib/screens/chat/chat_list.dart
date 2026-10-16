import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.black),
            ),
            title: Text('Kontak ${index + 1}', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            subtitle: const Text('Pesan terenkripsi...', style: TextStyle(color: Colors.grey)),
            trailing: Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              child: const Text('1', style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
    );
  }
}
