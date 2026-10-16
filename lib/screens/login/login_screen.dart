import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _progress = 0;
  bool _isLoading = false;
  final TextEditingController _phoneController = TextEditingController();

  void _startProgress() async {
    setState(() => _isLoading = true);
    for (int i = 0; i <= 100; i += 10) {
      await Future.delayed(const Duration(milliseconds: 100));
      if (mounted) setState(() => _progress = i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: const Center(
                  child: Text('AL', style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w900)),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Alyz WhatsApp Project', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              if (_isLoading) ...[
                LinearProgressIndicator(value: _progress / 100, backgroundColor: Colors.grey[900], color: Colors.white),
                const SizedBox(height: 8),
                Text('$_progress%', style: const TextStyle(color: Colors.white)),
              ],
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: const Text('Kebijakan Privasi: Data Anda terenkripsi secara ketat dengan AES-256.', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black, width: 3),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                onPressed: () {
                  _startProgress();
                },
                child: const Text('SETUJU DAN LANJUTKAN', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
