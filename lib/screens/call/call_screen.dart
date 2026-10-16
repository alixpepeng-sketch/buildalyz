import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(backgroundColor: Colors.white, child: const Icon(Icons.mic_off, color: Colors.black), onPressed: () {}),
                FloatingActionButton(backgroundColor: Colors.red, child: const Icon(Icons.call_end, color: Colors.white), onPressed: () {}),
                FloatingActionButton(backgroundColor: Colors.white, child: const Icon(Icons.videocam_off, color: Colors.black), onPressed: () {}),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
